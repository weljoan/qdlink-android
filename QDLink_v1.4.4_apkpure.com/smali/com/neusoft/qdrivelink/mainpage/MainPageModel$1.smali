.class final Lcom/neusoft/qdrivelink/mainpage/MainPageModel$1;
.super Ljava/util/TimerTask;
.source "MainPageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPageModel;->startTimeRecord(Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageModel$1;->val$listener:Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "HH:mm"

    .line 70
    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    .line 71
    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageModel$1;->val$listener:Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;

    invoke-interface {v1, v2, v0}, Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;->updateTimeAndDate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
