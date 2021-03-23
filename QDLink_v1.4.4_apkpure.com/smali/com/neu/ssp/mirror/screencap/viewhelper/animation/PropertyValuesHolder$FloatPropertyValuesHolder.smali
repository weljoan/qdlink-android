.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# instance fields
.field private e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

.field private f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

.field private g:F


# direct methods
.method public constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 908
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;B)V

    .line 909
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Ljava/lang/Class;

    .line 910
    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    .line 911
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast p2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    .line 912
    instance-of p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

    if-eqz p1, :cond_0

    .line 913
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 923
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;B)V

    .line 924
    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 925
    instance-of p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

    if-eqz p1, :cond_0

    .line 926
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 901
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;B)V

    .line 902
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->b:Ljava/lang/Class;

    .line 903
    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    .line 904
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 918
    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;B)V

    .line 919
    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p1

    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    return-void
.end method

.method final a(Ljava/lang/Class;)V
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz v0, :cond_0

    return-void

    .line 1020
    :cond_0
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    return-void
.end method

.method final b()Ljava/lang/Object;
    .locals 1

    .line 943
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .locals 2

    .line 948
    invoke-super {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 949
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    .line 962
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->e:Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;

    if-eqz v1, :cond_0

    .line 963
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-virtual {v1, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz v1, :cond_1

    .line 967
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->g:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 977
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->d:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 981
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 979
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 0

    .line 932
    invoke-super {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 933
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->f:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    return-void
.end method
