.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x1


# instance fields
.field public node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;I)V
    .locals 0

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 864
    iput p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->rule:I

    return-void
.end method
