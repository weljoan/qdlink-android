.class Lcom/neusoft/qdrivelink/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$1;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callLogChange()V
    .locals 0

    return-void
.end method

.method public state(I)V
    .locals 1

    const/16 v0, 0x362

    if-eq p1, v0, :cond_0

    .line 92
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    check-cast p1, Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->changePage(I)V

    .line 93
    sget-boolean p1, Lcom/neusoft/qdrivelink/phone/PhoneView;->isStart:Z

    if-nez p1, :cond_1

    .line 94
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    check-cast p1, Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addOrResumePhoneViewToPage()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$1;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->isBackground(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$1;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeInApp()V

    :cond_1
    :goto_0
    return-void
.end method
