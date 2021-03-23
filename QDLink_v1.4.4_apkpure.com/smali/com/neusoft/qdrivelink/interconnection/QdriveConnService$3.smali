.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;
.super Ljava/util/TimerTask;
.source "QdriveConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->AppStateTopOrBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1084
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$200(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 1086
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "QdriveConnService"

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v1, v0}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v1

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppInactive:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$300(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legalappList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$300(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_1
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$300(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$300(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1101
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$400(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "legalappList != null && legalappList.contains(topApp) true new"

    .line 1107
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLegalChangeNew(I)V

    goto :goto_0

    :cond_3
    const-string v0, "legalappList != null && legalappList.contains(topApp) true"

    .line 1103
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLegalChange(I)V

    goto :goto_0

    .line 1113
    :cond_4
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$400(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "legalappList != null && legalappList.contains(topApp) false new"

    .line 1119
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLegalChangeNew(I)V

    goto :goto_0

    :cond_6
    const-string v0, "legalappList != null && legalappList.contains(topApp) false"

    .line 1115
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLegalChange(I)V

    :goto_0
    return-void
.end method
