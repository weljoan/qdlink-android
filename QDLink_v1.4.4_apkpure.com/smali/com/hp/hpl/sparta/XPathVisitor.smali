.class Lcom/hp/hpl/sparta/XPathVisitor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hp/hpl/sparta/xpath/Visitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;
    }
.end annotation


# static fields
.field private static final FALSE:Ljava/lang/Boolean;

.field private static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private contextNode_:Lcom/hp/hpl/sparta/Node;

.field private final exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

.field private multiLevel_:Z

.field private node_:Ljava/lang/Object;

.field private nodelistFiltered_:Ljava/util/Vector;

.field private final nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

.field private nodesetIterator_:Ljava/util/Enumeration;

.field private xpath_:Lcom/hp/hpl/sparta/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/hp/hpl/sparta/Document;Lcom/hp/hpl/sparta/xpath/XPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/hp/hpl/sparta/XPathVisitor;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/Node;)V

    return-void
.end method

.method public constructor <init>(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/XPath;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/hp/hpl/sparta/XPathVisitor;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/XPath;->isAbsolute()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v0, "Cannot use element as context node for absolute xpath"

    invoke-direct {p1, p2, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/NodeListWithPosition;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodesetIterator_:Ljava/util/Enumeration;

    iput-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    new-instance v1, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    invoke-direct {v1, v0}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;-><init>(Lcom/hp/hpl/sparta/XPathVisitor$1;)V

    iput-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    iput-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    iput-object p2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->contextNode_:Lcom/hp/hpl/sparta/Node;

    new-instance p2, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object p2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    iget-object p2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->contextNode_:Lcom/hp/hpl/sparta/Node;

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/Step;->isMultiLevel()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->multiLevel_:Z

    iput-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodesetIterator_:Ljava/util/Enumeration;

    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/Step;->getNodeTest()Lcom/hp/hpl/sparta/xpath/NodeTest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hp/hpl/sparta/xpath/NodeTest;->accept(Lcom/hp/hpl/sparta/xpath/Visitor;)V

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->iterator()Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodesetIterator_:Ljava/util/Enumeration;

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/Step;->getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object p2

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodesetIterator_:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodesetIterator_:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/hp/hpl/sparta/xpath/BooleanExpr;->accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->pop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    iget-object v2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private accumulateElements(Lcom/hp/hpl/sparta/Document;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Document;->getDocumentElement()Lcom/hp/hpl/sparta/Element;

    move-result-object p1

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Lcom/hp/hpl/sparta/Node;I)V

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->multiLevel_:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateElements(Lcom/hp/hpl/sparta/Element;)V

    :cond_0
    return-void
.end method

.method private accumulateElements(Lcom/hp/hpl/sparta/Element;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Lcom/hp/hpl/sparta/Node;I)V

    iget-boolean v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->multiLevel_:Z

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/hp/hpl/sparta/Element;

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateElements(Lcom/hp/hpl/sparta/Element;)V

    :cond_1
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    goto :goto_0
.end method

.method private accumulateMatchingElements(Lcom/hp/hpl/sparta/Document;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Document;->getDocumentElement()Lcom/hp/hpl/sparta/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Lcom/hp/hpl/sparta/Node;I)V

    :cond_1
    iget-boolean v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->multiLevel_:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateMatchingElements(Lcom/hp/hpl/sparta/Element;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private accumulateMatchingElements(Lcom/hp/hpl/sparta/Element;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Lcom/hp/hpl/sparta/Node;I)V

    :cond_1
    iget-boolean v2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->multiLevel_:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p2}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateMatchingElements(Lcom/hp/hpl/sparta/Element;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getFirstResultElement()Lcom/hp/hpl/sparta/Element;
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    :goto_0
    return-object v0
.end method

.method public getFirstResultString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getResultEnumeration()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AllElementTest;)V
    .locals 2

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/NodeListWithPosition;->removeAllElements()V

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateElements(Lcom/hp/hpl/sparta/Element;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/hp/hpl/sparta/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hp/hpl/sparta/Document;

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateElements(Lcom/hp/hpl/sparta/Document;)V

    goto :goto_0
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->getAttrValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_2
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;->getAttrValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_2
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrLessExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;->getAttrValue()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_2
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->getAttrValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrTest;)V
    .locals 3

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->removeAllElements()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/Node;

    instance-of v2, v1, Lcom/hp/hpl/sparta/Element;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrTest;->getAttrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {v2, v1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/ElementTest;)V
    .locals 5

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/ElementTest;->getTagName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {v2}, Lcom/hp/hpl/sparta/NodeListWithPosition;->removeAllElements()V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/hp/hpl/sparta/Element;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/hp/hpl/sparta/Element;

    invoke-direct {p0, v3, p1}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateMatchingElements(Lcom/hp/hpl/sparta/Element;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/hp/hpl/sparta/Document;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/hp/hpl/sparta/Document;

    invoke-direct {p0, v3, p1}, Lcom/hp/hpl/sparta/XPathVisitor;->accumulateMatchingElements(Lcom/hp/hpl/sparta/Document;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/ParentNodeTest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->removeAllElements()V

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->contextNode_:Lcom/hp/hpl/sparta/Node;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Lcom/hp/hpl/sparta/Node;I)V

    return-void

    :cond_0
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Illegal attempt to apply \"..\" to node with no parent."

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {v1, v0}, Lcom/hp/hpl/sparta/NodeListWithPosition;->position(Lcom/hp/hpl/sparta/Node;)I

    move-result v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;->getPosition()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_2
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test position of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TextEqualsExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    sget-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/hp/hpl/sparta/Text;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Text;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/TextCompareExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    sget-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TextExistsExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v0, p1, Lcom/hp/hpl/sparta/Element;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    sget-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/hp/hpl/sparta/Text;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    sget-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->node_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    sget-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/hp/hpl/sparta/Text;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Text;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/TextCompareExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    sget-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const-string v1, "Cannot test attribute of document"

    invoke-direct {p1, v0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TextTest;)V
    .locals 3

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistFiltered_:Ljava/util/Vector;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/NodeListWithPosition;->removeAllElements()V

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/hp/hpl/sparta/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/hp/hpl/sparta/Text;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    move-object v2, v0

    check-cast v2, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v2}, Lcom/hp/hpl/sparta/Text;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/ThisNodeTest;)V
    .locals 2

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->removeAllElements()V

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->nodelistRaw_:Lcom/hp/hpl/sparta/NodeListWithPosition;

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor;->contextNode_:Lcom/hp/hpl/sparta/Node;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->add(Lcom/hp/hpl/sparta/Node;I)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TrueExpr;)V
    .locals 1

    iget-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor;->exprStack_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;

    sget-object v0, Lcom/hp/hpl/sparta/XPathVisitor;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->push(Ljava/lang/Boolean;)V

    return-void
.end method
