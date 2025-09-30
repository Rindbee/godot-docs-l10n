:github_url: hide

.. _class_EditorScenePostImport:

EditorScenePostImport
=====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Post-procesa las escenas después de la importación.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Las escenas importadas pueden ser modificadas automáticamente justo después de la importación estableciendo su propiedad de importación **Custom Script** a un script ``tool`` que herede de esta clase.

La llamada de retorno :ref:`_post_import()<class_EditorScenePostImport_private_method__post_import>` recibe el nodo raíz de la escena importada y devuelve la versión modificada de la escena:


.. tabs::

 .. code-tab:: gdscript

    @tool # Necesario para que se ejecute en el editor.
    extends EditorScenePostImport

    # Este ejemplo cambia todos los nombres de los nodos.
    # Se llama justo después de que la escena es importada y obtiene el nodo raíz.
    func _post_import(scene):
        # Cambia todos los nombres de los nodos a "modificado_[antiguonombredenodo]"
        iterate(scene)
        return scene # Recuerda devolver la escena importada

    func iterate(node):
        if node != null:
            node.name = "modificado_" + node.name
            for child in node.get_children():
                iterate(child)

 .. code-tab:: csharp

    using Godot;

    // Este ejemplo cambia todos los nombres de los nodos.
    // Se llama justo después de que la escena es importada y obtiene el nodo raíz.
    [Tool]
    public partial class NodeRenamer : EditorScenePostImport
    {
        public override GodotObject _PostImport(Node scene)
        {
            // Cambia todos los nombres de los nodos a "modificado_[antiguonombredenodo]"
            Iterate(scene);
            return scene; // Recuerda devolver la escena importada
        }

        public void Iterate(Node node)
        {
            if (node != null)
            {
                node.Name = $"modificado_{node.Name}";
                foreach (Node child in node.GetChildren())
                {
                    Iterate(child);
                }
            }
        }
    }



.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Importing 3D scenes: Configuration: Using import scripts for automation <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`_post_import<class_EditorScenePostImport_private_method__post_import>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_source_file<class_EditorScenePostImport_method_get_source_file>`\ (\ ) |const|                                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorScenePostImport_private_method__post_import:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_post_import**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImport_private_method__post_import>`

Llamado después de que la escena sea importada. Este método debe devolver la versión modificada de la escena.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImport_method_get_source_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source_file**\ (\ ) |const| :ref:`🔗<class_EditorScenePostImport_method_get_source_file>`

Devuelve la ruta del archivo de origen que se importó (por ejemplo, ``res://scene.dae``).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
