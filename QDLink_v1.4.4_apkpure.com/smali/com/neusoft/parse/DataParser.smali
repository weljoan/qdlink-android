.class public Lcom/neusoft/parse/DataParser;
.super Ljava/lang/Object;
.source "DataParser.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "APP_ID"

.field public static final APP_ID_LEN:Ljava/lang/String; = "APP_ID_LEN"

.field public static final CRC:Ljava/lang/String; = "CRC"

.field public static final DATA_COUNT:Ljava/lang/String; = "DATA_COUNT"

.field public static final DATA_INDEX:Ljava/lang/String; = "DATA_%d"

.field public static final DATA_INDEX_LEN:Ljava/lang/String; = "DATA_%d_LEN"

.field public static final FLOW_ID:Ljava/lang/String; = "FLOW_ID"

.field public static final LOGIC_ID:Ljava/lang/String; = "LOGIC_ID"

.field public static final LOGIC_ID_LEN:Ljava/lang/String; = "LOGIC_ID_LEN"

.field public static final TOTAL_LEN:Ljava/lang/String; = "TOTAL_LEN"


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    return-void
.end method

.method public static createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 176
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 179
    array-length v3, p3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 181
    :goto_0
    new-array v4, v3, [I

    add-int/lit8 v5, v0, 0x10

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x2

    move v6, v5

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v3, :cond_3

    add-int/lit8 v6, v6, 0x4

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A6A6"

    .line 190
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 191
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "%02x"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v8, [Ljava/lang/Object;

    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v9, "%08x"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v8, [Ljava/lang/Object;

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v8, [Ljava/lang/Object;

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v8, [Ljava/lang/Object;

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_2
    if-lt p0, v3, :cond_2

    .line 203
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/parse/CRC16;->crcProcess([B)I

    move-result p0

    new-array p1, v8, [Ljava/lang/Object;

    .line 205
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "%04x"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-array p1, v8, [Ljava/lang/Object;

    .line 199
    aget p2, v4, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v9, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    aget-object p1, p3, p0

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 184
    :cond_3
    aget-object v7, p3, v5

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    aput v7, v4, v5

    .line 185
    aget v7, v4, v5

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v1, "APP_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCRC()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v1, "CRC"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getData(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DATA_%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getData()[Ljava/lang/String;
    .locals 6

    .line 70
    invoke-virtual {p0}, Lcom/neusoft/parse/DataParser;->getDataCount()I

    move-result v0

    .line 71
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v1

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "DATA_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getDataCount()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v1, "DATA_COUNT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFlowID()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v1, "FLOW_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLogicID()Ljava/lang/String;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v1, "LOGIC_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public parse([B)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/neusoft/parse/CRC16;->crcProcess([BII)I

    move-result v1

    .line 98
    new-instance v3, Ljava/lang/String;

    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-direct {v3, p1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    const/16 v4, 0x10

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v3, :cond_1

    return v0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "A6A6"

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 110
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    const/4 v5, 0x6

    .line 112
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 113
    iget-object v6, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "FLOW_ID"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Ljava/lang/String;

    const/16 v6, 0x8

    invoke-direct {v1, p1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    const/16 v5, 0xe

    .line 117
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 118
    array-length v7, p1

    if-eq v1, v7, :cond_3

    return v0

    .line 121
    :cond_3
    iget-object v7, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v8, "TOTAL_LEN"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 125
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 126
    iget-object v5, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "APP_ID_LEN"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v4, v1}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v1, v4

    .line 130
    iget-object v7, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v8, "APP_ID"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v1, v3

    .line 134
    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 135
    iget-object v7, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "LOGIC_ID_LEN"

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1, v1, v5}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v1, v5

    .line 139
    iget-object v5, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v8, "LOGIC_ID"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v1, v3

    .line 143
    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 144
    iget-object v5, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "DATA_COUNT"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x1

    if-lt v1, v3, :cond_4

    .line 157
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 159
    iget-object p1, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    const-string v1, "CRC"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_4
    new-array v8, v7, [Ljava/lang/Object;

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, "DATA_%d_LEN"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v0

    const-string v9, "DATA_%d"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 149
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v5, v5, 0x8

    .line 151
    invoke-static {v9, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 152
    iget-object v10, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1, v5, v9}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v5, v9

    .line 155
    iget-object v9, p0, Lcom/neusoft/parse/DataParser;->map:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
