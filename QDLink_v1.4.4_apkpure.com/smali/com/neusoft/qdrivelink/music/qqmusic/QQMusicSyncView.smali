.class public Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "QQMusicSyncView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$View;


# instance fields
.field private menu_back_info:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ec
    .end annotation
.end field

.field private presenter:Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$Presenter;

.field private txt_qqmusic_download:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07019f
    .end annotation
.end field

.field private txt_qqmusic_sync:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701a0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private backOnClick(Landroid/widget/ImageView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700ec
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u70b9\u51fb\u4e86\u8fd4\u56de\u6309\u94ae"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 44
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->pageBack()V

    return-void
.end method

.method private qqmusicDownloadOnClick(Landroid/widget/TextView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f07019f
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u70b9\u51fb\u4e86qq\u97f3\u4e50\u4e0b\u8f7d\u6309\u94ae"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private qqmusicOnClick(Landroid/widget/TextView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0701a0
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u70b9\u51fb\u4e86qq\u540c\u6b65\u6309\u94ae"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0a003d

    .line 75
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    new-instance p1, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncPresenter;-><init>(Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;)V

    .line 77
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<font color=\'#3394ff\'>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->txt_qqmusic_download:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$Presenter;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->presenter:Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->setPresenter(Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$Presenter;)V

    return-void
.end method
