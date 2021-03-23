.class Lcom/hp/hpl/sparta/CharCircBuffer;
.super Ljava/lang/Object;


# instance fields
.field private final buf_:[I

.field private enabled_:Z

.field private next_:I

.field private total_:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    return-void
.end method

.method private addRaw(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    iget v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    iget p1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    :cond_0
    return-void
.end method


# virtual methods
.method addChar(C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/CharCircBuffer;->addRaw(I)V

    return-void
.end method

.method addInt(I)V
    .locals 1

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/CharCircBuffer;->addRaw(I)V

    return-void
.end method

.method addString(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/hp/hpl/sparta/CharCircBuffer;->addChar(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method disable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    return-void
.end method

.method enable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    iget-object v2, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    array-length v2, v2

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v3, v1

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v3, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    add-int/2addr v3, v2

    array-length v4, v1

    rem-int/2addr v3, v4

    aget v1, v1, v3

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
