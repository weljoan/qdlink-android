.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# instance fields
.field private e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

.field private f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 772
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;B)V

    .line 773
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->b:Ljava/lang/Class;

    .line 774
    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    .line 775
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast p2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    .line 776
    instance-of p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

    if-eqz p1, :cond_0

    .line 777
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 787
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;B)V

    .line 788
    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 789
    instance-of p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

    if-eqz p1, :cond_0

    .line 790
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 765
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;B)V

    .line 766
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->b:Ljava/lang/Class;

    .line 767
    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    .line 768
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 782
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;B)V

    .line 783
    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;->getIntValue(F)I

    move-result p1

    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->g:I

    return-void
.end method

.method final a(Ljava/lang/Class;)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz v0, :cond_0

    return-void

    .line 884
    :cond_0
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    return-void
.end method

.method final b()Ljava/lang/Object;
    .locals 1

    .line 807
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .locals 2

    .line 812
    invoke-super {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 813
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    .line 826
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;

    if-eqz v1, :cond_0

    .line 827
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->g:I

    invoke-virtual {v1, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    return-void

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz v1, :cond_1

    .line 831
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 838
    :cond_1
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 841
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->d:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 845
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 843
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 0

    .line 796
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 797
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    return-void
.end method
