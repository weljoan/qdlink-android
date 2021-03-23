.class Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;
.super Ljava/lang/Object;
.source "AppListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->initHolder(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

.field final synthetic val$position:I

.field final synthetic val$tempBean:Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->val$tempBean:Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    iput p3, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->access$300(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->access$400(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->val$tempBean:Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    iget v1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;->appOnSelectedListener(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->access$400(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;->val$tempBean:Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;->appOnClickListener(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
