.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;I)I

    .line 56
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->access$100(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 57
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->access$200(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;I)I

    .line 62
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->access$100(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 63
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->access$200(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method
