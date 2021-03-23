.class Lorg/apache/log4j/spi/VectorWriter;
.super Ljava/io/PrintWriter;
.source "VectorWriter.java"


# instance fields
.field private v:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/log4j/spi/NullWriter;

    invoke-direct {v0}, Lorg/apache/log4j/spi/NullWriter;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public print([C)V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public println([C)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 86
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 88
    iget-object v3, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public write([C)V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public write([CII)V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
