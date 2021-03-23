.class Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->access$400(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;->addApp()V

    return-void
.end method
