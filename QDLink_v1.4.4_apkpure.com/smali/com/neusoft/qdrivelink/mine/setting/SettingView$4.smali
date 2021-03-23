.class Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mine/setting/SettingView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 314
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x110

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x111

    const v2, 0x7f0d0027

    const/16 v3, 0x8

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 347
    :pswitch_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$1000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "key_save_change_server"

    invoke-static {p1, v2, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    .line 349
    sget p1, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 351
    sput p1, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    .line 352
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$1100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    const-string v0, "\u5207\u6362\u5230\u6d4b\u8bd5\u670d!"

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_0
    sput v1, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    .line 357
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$1200(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    const-string v0, "\u5207\u6362\u5230\u6b63\u5f0f\u670d!"

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :pswitch_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$800(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 340
    :pswitch_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$800(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 336
    :pswitch_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$800(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$900(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$600(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 332
    :pswitch_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$700(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$500(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$600(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Landroid/content/Context;)V

    goto :goto_0

    .line 324
    :pswitch_6
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$200(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$300(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$400(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    goto :goto_0

    .line 321
    :pswitch_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 317
    :pswitch_8
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$800(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$1300(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showToastShort(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
