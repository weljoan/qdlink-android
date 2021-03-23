.class public Lcom/neusoft/ssp/protocol/SSPProtocol;
.super Ljava/lang/Object;
.source "SSPProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/ssp/protocol/SSPProtocol$InstanceHolder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "sspLib"

    .line 253
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SSP"

    const-string v1, "Load static libary error"

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neusoft/ssp/protocol/SSPProtocol;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/neusoft/ssp/protocol/SSPProtocol;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;
    .locals 1

    .line 18
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol$InstanceHolder;->access$0()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v0

    return-object v0
.end method

.method private getStr(Lcom/neusoft/ssp/protocol/Handle;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 219
    iget v0, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    if-eqz v0, :cond_0

    .line 220
    iget p1, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    invoke-static {p1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_GetString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static native native_AddressSspDataNewArrayType()I
.end method

.method private static native native_AddressSspDataNewArrayType_x64()Ljava/lang/String;
.end method

.method private static native native_AddressSspDataNewBaseType(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native native_AddressSspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private static native native_GetString(I)Ljava/lang/String;
.end method

.method private static native native_GetVersion()Ljava/lang/String;
.end method

.method private static native native_SspDataAddArrayType(II)I
.end method

.method private static native native_SspDataAddArrayType_x64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_SspDataGetBaseType(ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_SspDataGetBaseType_x64(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_SspDataIterLoop(IILjava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_SspDataIterLoop_x64(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_SspDataRelease(I)V
.end method

.method private static native native_Trans(Ljava/lang/String;)I
.end method

.method private parseFormat(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "s"

    const-string v3, "d"

    const-string v4, "y"

    const/4 v5, 0x0

    const-string v6, "i"

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 230
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v5

    return-object v0

    :cond_3
    const-string v1, "("

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 239
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    .line 240
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    if-lt v8, v9, :cond_5

    new-array p1, v5, [Ljava/lang/String;

    .line 248
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 241
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "v"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    return-object v0

    .line 243
    :cond_7
    :goto_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    goto :goto_1

    :cond_8
    :goto_3
    return-object v0
.end method


# virtual methods
.method public dataAddArrayType(Lcom/neusoft/ssp/protocol/Handle;Lcom/neusoft/ssp/protocol/Handle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 127
    iget v1, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget v1, p2, Lcom/neusoft/ssp/protocol/Handle;->address:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget p1, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    iget p2, p2, Lcom/neusoft/ssp/protocol/Handle;->address:I

    invoke-static {p1, p2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_SspDataAddArrayType(II)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public dataAddArrayType_x64(Lcom/neusoft/ssp/protocol/Handle_x64;Lcom/neusoft/ssp/protocol/Handle_x64;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 112
    iget-object v1, p1, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/neusoft/ssp/protocol/Handle_x64;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/neusoft/ssp/protocol/Handle_x64;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_SspDataAddArrayType_x64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 122
    :cond_1
    invoke-virtual {p1, p2}, Lcom/neusoft/ssp/protocol/Handle_x64;->setAddress(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public getStr_x64(Lcom/neusoft/ssp/protocol/Handle_x64;)Ljava/lang/String;
    .locals 0

    .line 215
    invoke-virtual {p1}, Lcom/neusoft/ssp/protocol/Handle_x64;->getAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sspDataGetBaseType(Lcom/neusoft/ssp/protocol/Handle;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 161
    iget v1, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0, p2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->parseFormat(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 168
    :cond_1
    iget p1, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    invoke-static {p1, p2, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_SspDataGetBaseType(ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 172
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public sspDataGetBaseType_x64(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 149
    :cond_0
    invoke-direct {p0, p2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->parseFormat(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 153
    :cond_1
    invoke-static {p1, p2, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_SspDataGetBaseType_x64(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 157
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sspDataIterLoop(Lcom/neusoft/ssp/protocol/Handle;ILjava/lang/String;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 191
    iget v1, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, p3}, Lcom/neusoft/ssp/protocol/SSPProtocol;->parseFormat(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 198
    :cond_1
    iget p1, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    invoke-static {p1, p2, p3, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_SspDataIterLoop(IILjava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public sspDataIterLoop_x64(Lcom/neusoft/ssp/protocol/Handle_x64;ILjava/lang/String;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 176
    iget-object v1, p1, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0, p3}, Lcom/neusoft/ssp/protocol/SSPProtocol;->parseFormat(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 183
    :cond_1
    iget-object p1, p1, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    invoke-static {p1, p2, p3, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_SspDataIterLoop_x64(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public sspDataNewArrayType()Lcom/neusoft/ssp/protocol/Handle;
    .locals 2

    .line 103
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_AddressSspDataNewArrayType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    new-instance v1, Lcom/neusoft/ssp/protocol/Handle;

    invoke-direct {v1, v0}, Lcom/neusoft/ssp/protocol/Handle;-><init>(I)V

    return-object v1
.end method

.method public sspDataNewArrayType_x64()Lcom/neusoft/ssp/protocol/Handle_x64;
    .locals 2

    .line 98
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_AddressSspDataNewArrayType_x64()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/neusoft/ssp/protocol/Handle_x64;

    invoke-direct {v1, v0}, Lcom/neusoft/ssp/protocol/Handle_x64;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public varargs sspDataNewBaseType(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    array-length v1, p2

    mul-int/lit8 v2, v1, 0x2

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_2

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "str:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "xy"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p1, v2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_AddressSspDataNewBaseType(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "address......"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-object v0

    .line 93
    :cond_1
    new-instance p2, Lcom/neusoft/ssp/protocol/Handle;

    invoke-direct {p2, p1}, Lcom/neusoft/ssp/protocol/Handle;-><init>(I)V

    return-object p2

    .line 68
    :cond_2
    aget-object v4, p2, v3

    .line 69
    aget-object v5, p2, v3

    if-nez v5, :cond_3

    const-string v4, ""

    :cond_3
    mul-int/lit8 v5, v3, 0x2

    .line 72
    aput-object v4, v2, v5

    .line 73
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    const-string v4, "i"

    .line 74
    aput-object v4, v2, v5

    goto :goto_1

    .line 75
    :cond_4
    instance-of v6, v4, Ljava/lang/Byte;

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    const-string v4, "y"

    .line 76
    aput-object v4, v2, v5

    goto :goto_1

    .line 77
    :cond_5
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    const-string v4, "d"

    .line 78
    aput-object v4, v2, v5

    goto :goto_1

    .line 79
    :cond_6
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    const-string v4, "s"

    .line 80
    aput-object v4, v2, v5

    goto :goto_1

    .line 81
    :cond_7
    instance-of v6, v4, Lcom/neusoft/ssp/protocol/Handle;

    if-eqz v6, :cond_8

    add-int/lit8 v6, v5, 0x1

    const-string v7, "v"

    .line 82
    aput-object v7, v2, v6

    .line 83
    check-cast v4, Lcom/neusoft/ssp/protocol/Handle;

    iget v4, v4, Lcom/neusoft/ssp/protocol/Handle;->address:I

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-object v0
.end method

.method public varargs sspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle_x64;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 26
    :cond_0
    array-length v1, p2

    mul-int/lit8 v2, v1, 0x2

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_2

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "str:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "xy"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1, v2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_AddressSspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "address......"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-object v0

    .line 56
    :cond_1
    new-instance p2, Lcom/neusoft/ssp/protocol/Handle_x64;

    invoke-direct {p2, p1}, Lcom/neusoft/ssp/protocol/Handle_x64;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 29
    :cond_2
    aget-object v4, p2, v3

    .line 30
    aget-object v5, p2, v3

    if-nez v5, :cond_3

    const-string v4, ""

    :cond_3
    mul-int/lit8 v5, v3, 0x2

    .line 33
    aput-object v4, v2, v5

    .line 34
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    const-string v4, "i"

    .line 35
    aput-object v4, v2, v5

    goto :goto_1

    .line 36
    :cond_4
    instance-of v6, v4, Ljava/lang/Byte;

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    const-string v4, "y"

    .line 37
    aput-object v4, v2, v5

    goto :goto_1

    .line 38
    :cond_5
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    const-string v4, "d"

    .line 39
    aput-object v4, v2, v5

    goto :goto_1

    .line 40
    :cond_6
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    const-string v4, "s"

    .line 41
    aput-object v4, v2, v5

    goto :goto_1

    .line 42
    :cond_7
    instance-of v6, v4, Lcom/neusoft/ssp/protocol/Handle_x64;

    if-eqz v6, :cond_8

    add-int/lit8 v6, v5, 0x1

    const-string v7, "v"

    .line 43
    aput-object v7, v2, v6

    .line 44
    check-cast v4, Lcom/neusoft/ssp/protocol/Handle_x64;

    iget-object v4, v4, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    .line 45
    aput-object v4, v2, v5

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    return-object v0
.end method

.method public sspDataRelease(Lcom/neusoft/ssp/protocol/Handle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget v0, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    if-eqz v0, :cond_0

    .line 140
    iget v0, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    invoke-static {v0}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_SspDataRelease(I)V

    const/4 v0, 0x0

    .line 141
    iput v0, p1, Lcom/neusoft/ssp/protocol/Handle;->address:I

    :cond_0
    return-void
.end method

.method public sspTrans(Ljava/lang/String;)Lcom/neusoft/ssp/protocol/Handle;
    .locals 2

    .line 206
    new-instance v0, Lcom/neusoft/ssp/protocol/Handle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/neusoft/ssp/protocol/Handle;-><init>(I)V

    if-eqz p1, :cond_0

    .line 208
    invoke-static {p1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->native_Trans(Ljava/lang/String;)I

    move-result p1

    .line 209
    iput p1, v0, Lcom/neusoft/ssp/protocol/Handle;->address:I

    :cond_0
    return-object v0
.end method
