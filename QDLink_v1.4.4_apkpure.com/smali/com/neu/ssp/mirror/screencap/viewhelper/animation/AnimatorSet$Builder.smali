.class public Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# instance fields
.field private a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

.field private synthetic b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 2

    .line 1027
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 1029
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 1031
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public after(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1105
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->ofFloat([F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v0

    .line 1106
    invoke-virtual {v0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 1107
    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->after(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    .line 1087
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_0
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;I)V

    .line 1091
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->addDependency(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public before(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;
    .locals 3

    .line 1064
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 1066
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    .line 1067
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_0
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;I)V

    .line 1071
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->addDependency(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public with(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;
    .locals 3

    .line 1044
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    .line 1047
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_0
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;I)V

    .line 1051
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->addDependency(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method
