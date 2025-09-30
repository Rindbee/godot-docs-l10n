:github_url: hide

.. _class_KinematicCollision2D:

KinematicCollision2D
====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contient des données de collision dus au mouvement d'un :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Contient des données de collision dues au mouvement d'un :ref:`PhysicsBody2D<class_PhysicsBody2D>`, généralement depuis :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>`. Lorsqu'un :ref:`PhysicsBody2D<class_PhysicsBody2D>` est déplacé, il s'arrête s'il détecte une collision avec un autre corps. Si une collision est détectée, un objet **KinematicCollision2D** est renvoyé.

Les données de collision comprennent l'objet en collision, le mouvement restant et la position de la collision. Ces données peuvent être utilisées pour déterminer une réponse personnalisée à la collision.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_angle<class_KinematicCollision2D_method_get_angle>`\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_KinematicCollision2D_method_get_collider>`\ (\ ) |const|                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_KinematicCollision2D_method_get_collider_id>`\ (\ ) |const|                                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_KinematicCollision2D_method_get_collider_rid>`\ (\ ) |const|                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider_shape<class_KinematicCollision2D_method_get_collider_shape>`\ (\ ) |const|                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape_index<class_KinematicCollision2D_method_get_collider_shape_index>`\ (\ ) |const|                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collider_velocity<class_KinematicCollision2D_method_get_collider_velocity>`\ (\ ) |const|                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_depth<class_KinematicCollision2D_method_get_depth>`\ (\ ) |const|                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_local_shape<class_KinematicCollision2D_method_get_local_shape>`\ (\ ) |const|                                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_normal<class_KinematicCollision2D_method_get_normal>`\ (\ ) |const|                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_position<class_KinematicCollision2D_method_get_position>`\ (\ ) |const|                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_remainder<class_KinematicCollision2D_method_get_remainder>`\ (\ ) |const|                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_travel<class_KinematicCollision2D_method_get_travel>`\ (\ ) |const|                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_KinematicCollision2D_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_angle>`

Renvoie l'angle de collision selon la direction du haut ``up_direction``, qui vaut :ref:`Vector2.UP<class_Vector2_constant_UP>` par défaut. Cette valeur est toujours positive.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider>`

Renvoie l':ref:`Object<class_Object>` attaché au corps en collision.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_id>`

Renvoie l'identifiant unique d'instance de l':ref:`Object<class_Object>` attaché au corps en collision. Voir :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_rid>`

Renvoie le :ref:`RID<class_RID>` du corps en collision utilisé par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape>`

Renvoie la forme du corps en collision.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape_index**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape_index>`

Renvoie l'index de forme du corps en collision. Voir :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_velocity>`

Renvoie la vélocité du corps en collision.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_depth**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_depth>`

Renvoie la longueur de chevauchement du corps en collision le long de la normale de collision.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_local_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_local_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_local_shape>`

Renvoie la forme en collision de l’objet en mouvement.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_normal**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_normal>`

Renvoie la normale de la forme du corps en collision au point de collision.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_position**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_position>`

Renvoie le point de collision, dans les coordonnées globales.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_remainder>`

Renvoie le vecteur de mouvement restant de l'objet mobile.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_travel>`

Returns the moving object's travel before collision.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
