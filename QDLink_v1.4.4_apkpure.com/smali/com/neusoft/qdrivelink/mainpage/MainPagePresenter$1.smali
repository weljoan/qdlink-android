.class Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$1;
.super Ljava/lang/Object;
.source "MainPagePresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->startTimeRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$1;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateTimeAndDate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$1;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->access$000(Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;)Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->updateTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
