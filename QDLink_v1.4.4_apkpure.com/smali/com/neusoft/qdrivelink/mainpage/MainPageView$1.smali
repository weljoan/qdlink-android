.class Lcom/neusoft/qdrivelink/mainpage/MainPageView$1;
.super Ljava/lang/Object;
.source "MainPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPageView;->voiceClick(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$1;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$1;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeOutApp()V

    return-void
.end method
