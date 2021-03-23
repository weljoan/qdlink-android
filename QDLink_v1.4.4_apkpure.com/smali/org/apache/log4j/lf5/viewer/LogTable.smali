.class public Lorg/apache/log4j/lf5/viewer/LogTable;
.super Ljavax/swing/JTable;
.source "LogTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x438b5c25e8ea02aaL


# instance fields
.field protected _colCategory:I

.field protected _colDate:I

.field protected _colLevel:I

.field protected _colLocation:I

.field protected _colMessage:I

.field protected _colMessageNum:I

.field protected _colNDC:I

.field protected _colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field protected _colThread:I

.field protected _colThrown:I

.field protected _colWidths:[I

.field protected _dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

.field protected _detailTextArea:Ljavax/swing/JTextArea;

.field protected _numCols:I

.field protected _rowHeight:I

.field protected _tableColumns:[Ljavax/swing/table/TableColumn;


# direct methods
.method public constructor <init>(Ljavax/swing/JTextArea;)V
    .locals 4

    .line 86
    invoke-direct {p0}, Ljavax/swing/JTable;-><init>()V

    const/16 v0, 0x1e

    .line 57
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_rowHeight:I

    const/16 v0, 0x9

    .line 61
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    .line 62
    iget v1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    new-array v1, v1, [Ljavax/swing/table/TableColumn;

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colWidths:[I

    .line 64
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLogTableColumnArray()[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colDate:I

    const/4 v1, 0x1

    .line 66
    iput v1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThread:I

    const/4 v2, 0x2

    .line 67
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessageNum:I

    const/4 v2, 0x3

    .line 68
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLevel:I

    const/4 v2, 0x4

    .line 69
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNDC:I

    const/4 v2, 0x5

    .line 70
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colCategory:I

    const/4 v2, 0x6

    .line 71
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessage:I

    const/4 v2, 0x7

    .line 72
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLocation:I

    const/16 v2, 0x8

    .line 73
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThrown:I

    const/4 v2, 0x0

    .line 75
    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

    .line 88
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->init()V

    .line 90
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    .line 92
    new-instance p1, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    invoke-direct {p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->setModel(Ljavax/swing/table/TableModel;)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object p1

    invoke-interface {p1}, Ljavax/swing/table/TableColumnModel;->getColumns()Ljava/util/Enumeration;

    move-result-object p1

    .line 96
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/table/TableColumn;

    .line 98
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;

    invoke-direct {v3}, Lorg/apache/log4j/lf5/viewer/LogTableRowRenderer;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/swing/table/TableColumn;->setCellRenderer(Ljavax/swing/table/TableCellRenderer;)V

    .line 99
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colWidths:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 101
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aput-object v2, v3, v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object p1

    .line 106
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;

    invoke-direct {v0, p0, p0}, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;-><init>(Lorg/apache/log4j/lf5/viewer/LogTable;Ljavax/swing/JTable;)V

    invoke-interface {p1, v0}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    return-void

    :array_0
    .array-data 4
        0x28
        0x28
        0x28
        0x46
        0x46
        0x168
        0x1b8
        0xc8
        0x3c
    .end array-data
.end method


# virtual methods
.method public declared-synchronized clearLogRecords()V
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getColumnNameAndNumber()Ljava/util/Vector;
    .locals 4

    .line 200
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 201
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 202
    aget-object v2, v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDateFormatManager()Lorg/apache/log4j/lf5/util/DateFormatManager;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

    return-object v0
.end method

.method public getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 194
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_rowHeight:I

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->setRowHeight(I)V

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->setSelectionMode(I)V

    return-void
.end method

.method public setDateFormatManager(Lorg/apache/log4j/lf5/util/DateFormatManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_dateFormatManager:Lorg/apache/log4j/lf5/util/DateFormatManager;

    return-void
.end method

.method public setDetailedView()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    :goto_0
    iget v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    if-ge v2, v3, :cond_0

    .line 147
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljavax/swing/table/TableColumnModel;->removeColumn(Ljavax/swing/table/TableColumn;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    :goto_1
    iget v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    if-ge v1, v2, :cond_1

    .line 151
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->addColumn(Ljavax/swing/table/TableColumn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->sizeColumnsToFit(I)V

    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Ljavax/swing/JTable;->setFont(Ljava/awt/Font;)V

    .line 177
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Ljava/awt/Graphics;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/awt/FontMetrics;->getHeight()I

    move-result p1

    .line 181
    div-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_rowHeight:I

    .line 182
    iget p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_rowHeight:I

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->setRowHeight(I)V

    :cond_0
    return-void
.end method

.method public setView(Ljava/util/List;)V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 161
    :goto_0
    iget v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    if-ge v1, v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->removeColumn(Ljavax/swing/table/TableColumn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getColumnNameAndNumber()Ljava/util/Vector;

    move-result-object v1

    .line 166
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogTable;->_tableColumns:[Ljavax/swing/table/TableColumn;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->addColumn(Ljavax/swing/table/TableColumn;)V

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 172
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->sizeColumnsToFit(I)V

    return-void
.end method
