.class Lcom/neusoft/qdrivelink/SplashActivity$1$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/SplashActivity$1;->okOnclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/SplashActivity$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$1;->this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$1;->this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/SplashActivity;->access$100(Lcom/neusoft/qdrivelink/SplashActivity;)V

    return-void
.end method
