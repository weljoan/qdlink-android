.class public Lcom/neusoft/qdrivelink/phone/PhonePresenter;
.super Ljava/lang/Object;
.source "PhonePresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;


# instance fields
.field private mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    .line 37
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setPresenter(Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/phone/PhonePresenter;)Lcom/neusoft/qdrivelink/phone/PhoneView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    return-object p0
.end method


# virtual methods
.method public callLastLog(Landroid/content/Context;)V
    .locals 0

    .line 106
    invoke-static {p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getLastCallLog(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)Ljava/util/Map;

    return-void
.end method

.method public callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {v0, p1, p2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setCallLogData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public callLogFail(Ljava/lang/String;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setCallLogFailView()V

    return-void
.end method

.method public callNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->isTel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    const v0, 0x7f0d0083

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->callTel(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public callTel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 137
    check-cast p1, Landroid/app/Activity;

    .line 146
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;-><init>(Lcom/neusoft/qdrivelink/phone/PhonePresenter;Ljava/lang/String;Landroid/app/Activity;)V

    const-string p2, "android.permission.CALL_PHONE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->requestPermission(Landroid/app/Activity;Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;[Ljava/lang/String;)V

    return-void
.end method

.method public contactsEnd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setContactsData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public contactsFail(Ljava/lang/String;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setContactsFailView()V

    return-void
.end method

.method public frequentEnd(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setFrequentData()V

    return-void
.end method

.method public getCallLog(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-static {p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getrecord(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V

    return-void
.end method

.method public getContacts(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getInstance()Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhonePresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivelink/phone/PhonePresenter$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhonePresenter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContactsByNums(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-static {p0, p2}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getPhoneContactsbyNumFromList(Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method public getContactsByNumsEnd(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setSearchEndView(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getContactsByNumsFail(Ljava/lang/String;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->mPhoneView:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setSearchFailView()V

    return-void
.end method

.method public getFrequent(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-static {p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getFrequent(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V

    return-void
.end method

.method public refreshCallLog(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->refreshCallLog()V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
