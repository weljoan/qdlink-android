.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

.field public dependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field public nodeDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public nodeDependents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public tmpDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 883
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 894
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 900
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 907
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 914
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->done:Z

    .line 924
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    return-void
.end method


# virtual methods
.method public addDependency(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;)V
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_1
    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 942
    iget-object v0, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 945
    :cond_2
    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;
    .locals 2

    .line 951
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 952
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 955
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 874
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
