:github_url: hide

.. _class_PhysicsMaterial:

PhysicsMaterial
===============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Détient des propriétés liées à la physique d'une surface, à savoir sa rugosité et sa bounciness.

.. rst-class:: classref-introduction-group

Description
-----------

Détient des propriétés liées à la physique d'une surface, à savoir sa rugosité et sa bounciness. Cette classe est utilisée pour appliquer ces propriétés à un corps physique.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`absorbent<class_PhysicsMaterial_property_absorbent>` | ``false`` |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bounce<class_PhysicsMaterial_property_bounce>`       | ``0.0``   |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`friction<class_PhysicsMaterial_property_friction>`   | ``1.0``   |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`rough<class_PhysicsMaterial_property_rough>`         | ``false`` |
   +---------------------------+------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicsMaterial_property_absorbent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **absorbent** = ``false`` :ref:`🔗<class_PhysicsMaterial_property_absorbent>`

.. rst-class:: classref-property-setget

- |void| **set_absorbent**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_absorbent**\ (\ )

Si ``true``, soustrait la bounciness de la bounciness de l'objet en collision au lieu de l'additionner.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_bounce:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce** = ``0.0`` :ref:`🔗<class_PhysicsMaterial_property_bounce>`

.. rst-class:: classref-property-setget

- |void| **set_bounce**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce**\ (\ )

La capacité du corps à rebondir. Les valeurs vont de ``0`` (pas de rebond) à ``1`` (rebond complet).

\ **Note :** Même avec :ref:`bounce<class_PhysicsMaterial_property_bounce>` défini à ``1.0``, une partie de l'énergie sera perdue au cours du temps en raison de l'amortissement linéaire et angulaire. Pour avoir un corps physique qui conserve toute son énergie au cours du temps, définissez :ref:`bounce<class_PhysicsMaterial_property_bounce>` à ``1.0``, le mode d'amortissement linéaire du corps à **Remplacer** (si applicable), son amortissement linéaire à ``0.0``, son mode d'amortissement angulaire à **Remplacer** (si applicable), et son amortissement angulaire à ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_friction:

.. rst-class:: classref-property

:ref:`float<class_float>` **friction** = ``1.0`` :ref:`🔗<class_PhysicsMaterial_property_friction>`

.. rst-class:: classref-property-setget

- |void| **set_friction**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction**\ (\ )

La friction du corps. La valeur va de ``0`` (sans friction) à ``1`` (friction maximale).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_rough:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rough** = ``false`` :ref:`🔗<class_PhysicsMaterial_property_rough>`

.. rst-class:: classref-property-setget

- |void| **set_rough**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rough**\ (\ )

Si ``true``, le moteur de physique utilisera la friction de l'objet marqué comme "rugueux" lorsque deux objets entrent en collision. Si ``false``, le moteur de physique utilisera plutôt la friction le plus basse de tous les objets en collision. Si ``true`` pour les deux objets en collision, le moteur de physique utilisera la plus haute friction.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
