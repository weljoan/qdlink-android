.class Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;
.super Ljava/lang/Object;
.source "SearchMusicView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 293
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-lez p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1000(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$400(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1100(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1200(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1300(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1000(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$400(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1100(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1200(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1300(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
