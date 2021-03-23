.class public abstract Lcn/dr/lib/ui/DRFragment;
.super Landroidx/fragment/app/Fragment;
.source "DRFragment.java"


# static fields
.field protected static log:Lorg/apache/log4j/Logger;


# instance fields
.field protected mApplication:Lcn/dr/lib/app/DRApplication;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private configLog4j()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcn/dr/lib/ui/DRFragment;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method private initApp()V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/dr/lib/app/DRApplication;

    iput-object v0, p0, Lcn/dr/lib/ui/DRFragment;->mApplication:Lcn/dr/lib/app/DRApplication;

    .line 31
    iget-object v0, p0, Lcn/dr/lib/ui/DRFragment;->mApplication:Lcn/dr/lib/app/DRApplication;

    invoke-virtual {v0}, Lcn/dr/lib/app/DRApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/ui/DRFragment;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-direct {p0}, Lcn/dr/lib/ui/DRFragment;->initApp()V

    .line 25
    invoke-direct {p0}, Lcn/dr/lib/ui/DRFragment;->configLog4j()V

    return-void
.end method
