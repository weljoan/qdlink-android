.class Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;
.super Ljava/lang/Object;
.source "MainPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPageView;->updateTime(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;->val$time:Ljava/lang/String;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;->val$date:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$100(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;->val$time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$200(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;->val$date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
