:github_url: hide

.. _class_Mutex:

Mutex
=====

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`Semaphore<class_Semaphore>` binaire pour la synchronisation de plusieurs :ref:`Thread<class_Thread>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

Un mutex (MUTual EXclusion, litt "exclusion mutuelle") de synchronisation. Ceci est utilisé pour synchroniser plusieurs :ref:`Thread<class_Thread>`\ s, et est équivalent à un :ref:`Semaphore<class_Semaphore>` binaire. Il garantit qu'un seul thread peut accéder à une section critique à la fois.

Il s'agit un mutex ré-entrant, ce qui signifie qu'il peut être verrouillé plusieurs fois par un thread, à condition qu'il est déverrouillé autant de fois.

\ **Attention :** Les mutex doivent être utilisés soigneusement pour éviter des blocages.

\ **Attention :** Pour assurer un nettoyage approprié sans crash ni blocages, les conditions suivantes doivent être remplies :

- Lorsque le nombre de référence d'un **Mutex** atteint zéro et qu'il est donc détruit, aucun thread (y compris celui sur lequel la destruction se produira) ne doit l'avoir verrouillé.

- Lorsque le nombre de référence d'un :ref:`Thread<class_Thread>` atteint zéro et qu'il est donc détruit, il ne doit pas avoir de mutex verrouillé.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser plusieurs fils d'exécution <../tutorials/performance/using_multiple_threads>`

- :doc:`Les API sûres pour plusieurs fils d'exécution <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`lock<class_Mutex_method_lock>`\ (\ )         |
   +-------------------------+----------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`try_lock<class_Mutex_method_try_lock>`\ (\ ) |
   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`unlock<class_Mutex_method_unlock>`\ (\ )     |
   +-------------------------+----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

Verrouille ce **Mutex**, le bloque jusqu'à ce qu'il soit déverrouillé par le propriétaire actuel.

\ **Note :** Cette fonction renvoie sans bloquer si ce thread est déjà le propriétaire du mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

Essaie de verrouiller ce **Mutex**, mais ne le bloque pas. Renvoie ``true`` en cas de succès, ``false`` sinon.

\ **Note :** Cette fonction renvoie ``true`` si le thread possède déjà le mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Déverrouille ce **Mutex**, le laissant à d'autres threads.

\ **Note :** Si un thread a appelé :ref:`lock()<class_Mutex_method_lock>` ou :ref:`try_lock()<class_Mutex_method_try_lock>` plusieurs fois en étant déjà propriétaire du mutex, il doit également appeler :ref:`unlock()<class_Mutex_method_unlock>` autant de fois pour le déverrouiller correctement.

\ **Attention :** Appeler :ref:`unlock()<class_Mutex_method_unlock>` plus de fois que :ref:`lock()<class_Mutex_method_lock>` sur un thread donné, se terminant ainsi en essayant de déverrouiller un mutex non verrouillé, est incorrect et peut causer des plantages ou des blocages.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
