.class public abstract Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;
.super Lcom/hp/hpl/sparta/xpath/AttrExpr;


# instance fields
.field private final attrValue_:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;->attrValue_:I

    return-void
.end method


# virtual methods
.method public getAttrValue()D
    .locals 2

    iget v0, p0, Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;->attrValue_:I

    int-to-double v0, v0

    return-wide v0
.end method

.method protected toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;->attrValue_:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "\']"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
