.class Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;
.super Ljava/lang/Object;
.source "LogTable.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/lf5/viewer/LogTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogTableListSelectionListener"
.end annotation


# instance fields
.field protected _table:Ljavax/swing/JTable;

.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogTable;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogTable;Ljavax/swing/JTable;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 5

    .line 224
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/ListSelectionModel;

    .line 229
    invoke-interface {p1}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 233
    invoke-interface {p1}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result p1

    const/4 v1, 0x0

    .line 235
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v2, v2, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    .line 237
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v2}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 242
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v4, v4, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\t"

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v4, v4, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThread:I

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v4, v4, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessage:I

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v4, v4, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLevel:I

    if-ne v1, v4, :cond_4

    .line 246
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_4
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v3, v3, Lorg/apache/log4j/lf5/viewer/LogTable;->_colDate:I

    if-eq v1, v3, :cond_5

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v3, v3, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNDC:I

    if-ne v1, v3, :cond_6

    :cond_5
    const-string v3, "\t\t"

    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v2, v2, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v3, v3, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v1}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v2, v2, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, p1, v2}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_8
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object p1, p1, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
