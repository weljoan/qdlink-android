.class Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;
.super Ljava/util/ArrayList;
.source "MainPagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->initAppInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "com.tencent.mm"

    .line 75
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;->add(Ljava/lang/Object;)Z

    const-string p1, "com.tencent.mobileqq"

    .line 76
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;->add(Ljava/lang/Object;)Z

    const-string p1, "com.baidu.BaiduMap"

    .line 77
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;->add(Ljava/lang/Object;)Z

    const-string p1, "com.autonavi.minimap"

    .line 78
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;->add(Ljava/lang/Object;)Z

    const-string p1, "com.tencent.qqmusic"

    .line 79
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;->add(Ljava/lang/Object;)Z

    const-string p1, "com.tencent.qqlive"

    .line 80
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
