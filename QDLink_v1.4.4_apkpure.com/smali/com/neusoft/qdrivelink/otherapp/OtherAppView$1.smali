.class Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;
.super Ljava/lang/Object;
.source "OtherAppView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->initAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addApp(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$000(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$100(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V

    return-void
.end method

.method public deleteApp(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$000(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    .line 115
    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$000(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$200(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$300(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;->deleteAppInfo(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V

    .line 120
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$100(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V

    :cond_1
    return-void
.end method
