.class Lcom/neusoft/qdrivelink/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/MainActivity;->downloadLinkPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;

.field final synthetic val$carType:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currVersion:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$linkCheck:Ljava/lang/String;

.field final synthetic val$linkSize:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$carType:Ljava/lang/String;

    iput-object p4, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$currVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$linkSize:Ljava/lang/String;

    iput-object p7, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$linkCheck:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inProgress(JJI)V
    .locals 0

    const-string p1, "testwang"

    const-string p2, "inProgress \u4e0b\u8f7d\u4e2d \u3002\u3002\u3002"

    .line 600
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBefore(Lokhttp3/Request;I)V
    .locals 1

    const-string p1, "testwang"

    const-string p2, "onBefore \u4e0b\u8f7d\u4e4b\u524d"

    .line 632
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0062

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(I)V
    .locals 2

    const-string p1, "testwang"

    const-string v0, "onError \u4e0b\u8f7d\u9519\u8bef"

    .line 605
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 608
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 609
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onResponse(Ljava/io/File;I)V
    .locals 1

    const-string p1, "testwang"

    const-string p2, "onResponse \u5b8c\u6210"

    .line 617
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$carType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PackageName"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$fileName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$carType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Version"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$currVersion:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$carType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LinkSize"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$linkSize:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$carType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LinkCheck"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$linkCheck:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 624
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/MainActivity$9;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d002f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 625
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
