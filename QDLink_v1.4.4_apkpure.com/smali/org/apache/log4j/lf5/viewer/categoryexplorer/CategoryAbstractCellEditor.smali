.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;
.super Ljava/lang/Object;
.source "CategoryAbstractCellEditor.java"

# interfaces
.implements Ljavax/swing/table/TableCellEditor;
.implements Ljavax/swing/tree/TreeCellEditor;


# static fields
.field static synthetic class$javax$swing$event$CellEditorListener:Ljava/lang/Class;


# instance fields
.field protected _changeEvent:Ljavax/swing/event/ChangeEvent;

.field protected _clickCountToStart:I

.field protected _listenerList:Ljavax/swing/event/EventListenerList;

.field protected _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 111
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public addCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "javax.swing.event.CellEditorListener"

    invoke-static {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public cancelCellEditing()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingCanceled()V

    return-void
.end method

.method protected fireEditingCanceled()V
    .locals 4

    .line 151
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 153
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_3

    .line 154
    aget-object v2, v0, v1

    sget-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "javax.swing.event.CellEditorListener"

    invoke-static {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_0
    if-ne v2, v3, :cond_2

    .line 155
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v2, :cond_1

    .line 156
    new-instance v2, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v2, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 159
    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingCanceled(Ljavax/swing/event/ChangeEvent;)V

    :cond_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected fireEditingStopped()V
    .locals 4

    .line 137
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 139
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_3

    .line 140
    aget-object v2, v0, v1

    sget-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "javax.swing.event.CellEditorListener"

    invoke-static {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_0
    if-ne v2, v3, :cond_2

    .line 141
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v2, :cond_1

    .line 142
    new-instance v2, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v2, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 145
    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingStopped(Ljavax/swing/event/ChangeEvent;)V

    :cond_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getCellEditorValue()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public getClickCountToStart()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return v0
.end method

.method public getTableCellEditorComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZII)Ljava/awt/Component;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTreeCellEditorComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)Ljava/awt/Component;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCellEditable(Ljava/util/EventObject;)Z
    .locals 1

    .line 83
    instance-of v0, p1, Ljava/awt/event/MouseEvent;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Ljava/awt/event/MouseEvent;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result p1

    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "javax.swing.event.CellEditorListener"

    invoke-static {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public setCellEditorValue(Ljava/lang/Object;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    return-void
.end method

.method public setClickCountToStart(I)V
    .locals 0

    .line 75
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return-void
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->isCellEditable(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 93
    check-cast p1, Ljava/awt/event/MouseEvent;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result p1

    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public stopCellEditing()Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingStopped()V

    const/4 v0, 0x1

    return v0
.end method
