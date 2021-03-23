.class public Lcom/tbruyelle/rxpermissions/RxPermissions;
.super Ljava/lang/Object;
.source "RxPermissions.java"


# static fields
.field static final TAG:Ljava/lang/String; = "RxPermissions"


# instance fields
.field mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->getRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    return-void
.end method

.method private findRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "RxPermissions"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    return-object p1
.end method

.method private getRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;
    .locals 3

    .line 42
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->findRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 45
    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-direct {v0}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "RxPermissions"

    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 51
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-object v0
.end method

.method private oneOf(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "*>;",
            "Lrx/Observable<",
            "*>;)",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 160
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    invoke-static {p1, p2}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method private varargs pending([Ljava/lang/String;)Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 150
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 151
    iget-object v3, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-virtual {v3, v2}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->containsByPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 155
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method private varargs shouldShowRequestPermissionRationaleImplementation(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5

    .line 227
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 228
    invoke-virtual {p0, v3}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public varargs ensure([Ljava/lang/String;)Lrx/Observable$Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable$Transformer<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$1;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs ensureEach([Ljava/lang/String;)Lrx/Observable$Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable$Transformer<",
            "Ljava/lang/Object;",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissions$2;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$2;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V

    return-object v0
.end method

.method public isGranted(Ljava/lang/String;)Z
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->isGranted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isMarshmallow()Z
    .locals 2

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRevoked(Ljava/lang/String;)Z
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->isRevoked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    array-length v1, p1

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->onRequestPermissionsResult([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method varargs request(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 137
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->pending([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->oneOf(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissions$3;

    invoke-direct {v0, p0, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions$3;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RxPermissions.request/requestEach requires at least one input permission"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs request([Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->ensure([Ljava/lang/String;)Lrx/Observable$Transformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public varargs requestEach([Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->ensureEach([Ljava/lang/String;)Lrx/Observable$Transformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method varargs requestImplementation([Ljava/lang/String;)Lrx/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 173
    iget-object v6, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->log(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v5}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    new-instance v6, Lcom/tbruyelle/rxpermissions/Permission;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7, v3}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_0
    invoke-virtual {p0, v5}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isRevoked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    new-instance v6, Lcom/tbruyelle/rxpermissions/Permission;

    invoke-direct {v6, v5, v3, v3}, Lcom/tbruyelle/rxpermissions/Permission;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_1
    iget-object v6, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-virtual {v6, v5}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->getSubjectByPermission(Ljava/lang/String;)Lrx/subjects/PublishSubject;

    move-result-object v6

    if-nez v6, :cond_2

    .line 190
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v6

    .line 192
    iget-object v7, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-virtual {v7, v5, v6}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->setSubjectForPermission(Ljava/lang/String;Lrx/subjects/PublishSubject;)Lrx/subjects/PublishSubject;

    .line 195
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 200
    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->requestPermissionsFromFragment([Ljava/lang/String;)V

    .line 202
    :cond_4
    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method requestPermissionsFromFragment([Ljava/lang/String;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermissionsFromFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->log(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method public setLogging(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissionsFragment;->setLogging(Z)V

    return-void
.end method

.method public varargs shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 220
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->shouldShowRequestPermissionRationaleImplementation(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
