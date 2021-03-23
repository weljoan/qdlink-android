.class Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$1;
.super Ljava/lang/Object;
.source "CompoundButtonCheckedChangeOnSubscribe.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
