:github_url: hide

.. _class_EditorSceneFormatImporterBlend:

EditorSceneFormatImporterBlend
==============================

**Hérite de :** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importeur pour le format de fichier de scène ``.blend`` de Blender.

.. rst-class:: classref-introduction-group

Description
-----------

Importe des scènes Blender dans le format de fichier ``.blend`` via la pipeline d'importation 3D glTF 2.0. Cet importeur exige que Blender soit installé par l'utilisateur, afin qu'il puisse être utilisé pour exporter la scène en tant que glTF 2.0.

L'emplacement du binaire Blender est défini via le paramètre :ref:`EditorSettings.filesystem/import/blender/blender_path<class_EditorSettings_property_filesystem/import/blender/blender_path>`.

Cet importateur n'est utilisé que si :ref:`ProjectSettings.filesystem/import/blender/enabled<class_ProjectSettings_property_filesystem/import/blender/enabled>` est activé, sinon les fichiers ``.blend`` présents dans le dossier du projet ne sont pas importés.

L'importation des .blend nécessite Blender 3.0.

En interne, EditorSceneFormatImporterBlend utilise le mode "Conserver les originales" glTF de Blender pour référencer les textures externes.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
