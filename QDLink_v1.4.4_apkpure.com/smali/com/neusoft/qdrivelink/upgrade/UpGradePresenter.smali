.class public Lcom/neusoft/qdrivelink/upgrade/UpGradePresenter;
.super Ljava/lang/Object;
.source "UpGradePresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/upgrade/UpGradeContract$Presenter;


# instance fields
.field private upGradeView:Lcom/neusoft/qdrivelink/upgrade/UpGradeView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/upgrade/UpGradeView;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/UpGradePresenter;->upGradeView:Lcom/neusoft/qdrivelink/upgrade/UpGradeView;

    .line 10
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/UpGradePresenter;->upGradeView:Lcom/neusoft/qdrivelink/upgrade/UpGradeView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/upgrade/UpGradeView;->setPresenter(Lcom/neusoft/qdrivelink/upgrade/UpGradeContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    return-void
.end method
