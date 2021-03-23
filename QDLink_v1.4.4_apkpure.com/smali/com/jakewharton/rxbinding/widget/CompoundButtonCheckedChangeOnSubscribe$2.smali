.class Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "CompoundButtonCheckedChangeOnSubscribe.java"


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


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;->view:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
