.class Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;
.super Ljava/lang/Object;
.source "CategoryNodeEditor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    iget-object p1, p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_categoryModel:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_lastEditedNode:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    iget-object v1, v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v1}, Ljavax/swing/JCheckBox;->isSelected()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->update(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    .line 73
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->stopCellEditing()Z

    return-void
.end method
