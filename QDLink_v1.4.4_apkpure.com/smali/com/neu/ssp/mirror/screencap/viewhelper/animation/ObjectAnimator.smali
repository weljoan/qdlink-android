.class public final Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final h:Z = false

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/String;

.field private l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "alpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "pivotX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "pivotY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "translationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "translationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "rotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->g:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "rotationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "rotationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->j:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "scaleY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "scrollX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "scrollY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->m:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat;->n:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property<",
            "TT;*>;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    .line 175
    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setProperty(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    .line 164
    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    .line 251
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1

    .line 231
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;"
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    .line 212
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1

    .line 193
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property<",
            "TT;TV;>;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;"
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    .line 298
    invoke-virtual {v0, p3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1

    .line 274
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1

    .line 322
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>()V

    .line 323
    iput-object p0, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    .line 324
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 402
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->e:Z

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setProperty(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 410
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-super {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a()V

    :cond_2
    return-void
.end method

.method final a(F)V
    .locals 3

    .line 491
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a(F)V

    .line 492
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->d(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 1

    .line 500
    invoke-super {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarget()Ljava/lang/Object;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 0

    .line 427
    invoke-super {p0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    return-object p0
.end method

.method public final bridge synthetic setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final varargs setFloatValues([F)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setFloatValues([F)V

    return-void

    .line 348
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v2, v2, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 349
    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofFloat(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-void

    :cond_2
    new-array v0, v2, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 351
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public final varargs setIntValues([I)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setIntValues([I)V

    return-void

    .line 333
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v2, v2, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 334
    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofInt(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-void

    :cond_2
    new-array v0, v2, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 336
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public final varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    return-void

    .line 363
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    new-array v3, v3, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 364
    invoke-static {v0, v1, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofObject(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-void

    :cond_2
    new-array v0, v3, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 366
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public final setProperty(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 120
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setProperty(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    .line 122
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->l:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    .line 130
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->e:Z

    return-void
.end method

.method public final setPropertyName(Ljava/lang/String;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 98
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->k:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->e:Z

    return-void
.end method

.method public final setTarget(Ljava/lang/Object;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 450
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 455
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->e:Z

    :cond_1
    return-void
.end method

.method public final setupEndValues()V
    .locals 4

    .line 470
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->a()V

    .line 471
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 473
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setupStartValues()V
    .locals 4

    .line 461
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->a()V

    .line 462
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 0

    .line 385
    invoke-super {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->j:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 509
    :goto_0
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
