.class public Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;
.super Ljava/lang/Object;
.source "SearchResultBean.java"


# static fields
.field public static final MATCH_EXACT:I = 0x0

.field public static final MATCH_NONE_ALL:I = 0x6

.field public static final MATCH_NONE_PART:I = 0x5

.field public static final MATCH_PRONOUNCE:I = 0x1

.field public static final MATCH_SIMILAR:I = 0x2


# instance fields
.field public match:I

.field public position:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->match:I

    .line 9
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->position:I

    return-void
.end method


# virtual methods
.method public getMatch()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->match:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->position:I

    return v0
.end method

.method public setMatch(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->match:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->position:I

    return-void
.end method
