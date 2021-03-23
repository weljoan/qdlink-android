.class public interface abstract Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;
.super Ljava/lang/Object;
.source "PhoneContract.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/PhoneContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract callLastLog(Landroid/content/Context;)V
.end method

.method public abstract callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V
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
.end method

.method public abstract callLogFail(Ljava/lang/String;)V
.end method

.method public abstract callNumber(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract contactsEnd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
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
.end method

.method public abstract contactsFail(Ljava/lang/String;)V
.end method

.method public abstract frequentEnd(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCallLog(Landroid/content/Context;)V
.end method

.method public abstract getContacts(Landroid/content/Context;)V
.end method

.method public abstract getContactsByNums(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract getContactsByNumsEnd(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContactsByNumsFail(Ljava/lang/String;)V
.end method

.method public abstract getFrequent(Landroid/content/Context;)V
.end method

.method public abstract refreshCallLog(Landroid/content/Context;)V
.end method
