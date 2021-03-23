.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;
.super Ljavax/swing/tree/DefaultTreeCellEditor;
.source "CategoryImmediateEditor.java"


# instance fields
.field protected editingIcon:Ljavax/swing/Icon;

.field private renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;


# direct methods
.method public constructor <init>(Ljavax/swing/JTree;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/tree/DefaultTreeCellEditor;-><init>(Ljavax/swing/JTree;Ljavax/swing/tree/DefaultTreeCellRenderer;Ljavax/swing/tree/TreeCellEditor;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->editingIcon:Ljavax/swing/Icon;

    .line 60
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    .line 61
    invoke-virtual {p2, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 62
    invoke-virtual {p2, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    .line 63
    invoke-virtual {p2, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 64
    invoke-virtual {p2, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 66
    iput-object p1, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->editingIcon:Ljavax/swing/Icon;

    return-void
.end method


# virtual methods
.method protected canEditImmediately(Ljava/util/EventObject;)Z
    .locals 1

    .line 119
    instance-of v0, p1, Ljava/awt/event/MouseEvent;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Ljava/awt/event/MouseEvent;

    .line 121
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected determineOffset(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)V
    .locals 0

    const/4 p1, 0x0

    .line 131
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->offset:I

    return-void
.end method

.method public inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z
    .locals 4

    .line 88
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 100
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->tree:Ljavax/swing/JTree;

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->lastRow:I

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->getRowBounds(I)Ljava/awt/Rectangle;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->getCheckBoxOffset()Ljava/awt/Dimension;

    move-result-object v1

    .line 104
    iget v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->offset:I

    iget v3, v1, Ljava/awt/Dimension;->width:I

    add-int/2addr v2, v3

    iget v1, v1, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, v2, v1}, Ljava/awt/Rectangle;->translate(II)V

    .line 107
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .locals 2

    .line 75
    instance-of v0, p1, Ljava/awt/event/MouseEvent;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Ljava/awt/event/MouseEvent;

    .line 77
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 82
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isLeaf()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
