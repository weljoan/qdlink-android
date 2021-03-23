.class public final Lorg/xutils/db/sqlite/SqlInfo;
.super Ljava/lang/Object;
.source "SqlInfo.java"


# instance fields
.field private bindArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private sql:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBindArg(Lorg/xutils/common/util/KeyValue;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBindArgs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 5

    .line 65
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 67
    :goto_0
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_5

    .line 68
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    .line 69
    iget-object v2, v2, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v2}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v3

    .line 74
    invoke-interface {v3}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v3

    .line 75
    sget-object v4, Lorg/xutils/db/sqlite/SqlInfo$1;->$SwitchMap$org$xutils$db$sqlite$ColumnDbType:[I

    invoke-virtual {v3}, Lorg/xutils/db/sqlite/ColumnDbType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v0, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 89
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 86
    :cond_1
    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_1

    .line 77
    :cond_4
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public getBindArgs()[Ljava/lang/Object;
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 103
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    iget-object v2, v2, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v2}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getBindArgsAsStrArray()[Ljava/lang/String;
    .locals 4

    .line 111
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 113
    :goto_0
    iget-object v3, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 114
    iget-object v3, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/common/util/KeyValue;

    iget-object v3, v3, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v3}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-void
.end method
