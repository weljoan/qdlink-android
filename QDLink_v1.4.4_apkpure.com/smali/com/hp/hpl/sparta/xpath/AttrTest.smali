.class public Lcom/hp/hpl/sparta/xpath/AttrTest;
.super Lcom/hp/hpl/sparta/xpath/NodeTest;


# instance fields
.field private final attrName_:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/NodeTest;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/AttrTest;->attrName_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lcom/hp/hpl/sparta/xpath/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/NodeTestVisitor;->visit(Lcom/hp/hpl/sparta/xpath/AttrTest;)V

    return-void
.end method

.method public getAttrName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/AttrTest;->attrName_:Ljava/lang/String;

    return-object v0
.end method

.method public isStringValue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/AttrTest;->attrName_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
