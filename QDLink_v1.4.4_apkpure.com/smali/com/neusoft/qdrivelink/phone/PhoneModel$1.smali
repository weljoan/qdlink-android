.class final Lcom/neusoft/qdrivelink/phone/PhoneModel$1;
.super Ljava/lang/Object;
.source "PhoneModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneModel;->getPhoneContactsbyNumFromList(Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$num:Ljava/lang/String;

.field final synthetic val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;->val$num:Ljava/lang/String;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 332
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->access$000()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;->val$num:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getContactsByNumsEnd(Ljava/util/ArrayList;)V

    return-void

    .line 344
    :cond_0
    sget-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 346
    sget-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 347
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->access$000()I

    move-result v4

    if-le v4, v0, :cond_2

    return-void

    .line 350
    :cond_2
    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;->val$num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getContactsByNumsEnd(Ljava/util/ArrayList;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactslist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method
