.class public Lcom/neusoft/qdrivelink/phone/PhoneView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "PhoneView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/PhoneContract$View;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static isStart:Z = false


# instance fields
.field private final VIEW_ABNORMAL:I

.field private final VIEW_ADDING:I

.field private final VIEW_EDIT:I

.field private final VIEW_EMPTY:I

.field private final VIEW_LOADING:I

.field private final VIEW_NORMAL:I

.field private btn_add_frequent:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07003c
    .end annotation
.end field

.field private btn_call_log:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070047
    .end annotation
.end field

.field private btn_call_log_reload:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070048
    .end annotation
.end field

.field private btn_contacts:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070049
    .end annotation
.end field

.field private btn_dial:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07004a
    .end annotation
.end field

.field private btn_dial_plate:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07004b
    .end annotation
.end field

.field private btn_down:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07004c
    .end annotation
.end field

.field private btn_frequent_contacts:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07004e
    .end annotation
.end field

.field private btn_reload:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070052
    .end annotation
.end field

.field private btn_submit:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070056
    .end annotation
.end field

.field private btn_up:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070057
    .end annotation
.end field

.field private conn:Landroid/content/ServiceConnection;

.field private connIfly:Landroid/content/ServiceConnection;

.field private group_keys:Landroidx/constraintlayout/widget/Group;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700c3
    .end annotation
.end field

.field private gson:Lcom/google/gson/Gson;

.field private img_contacts:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07009f
    .end annotation
.end field

.field private img_dial_plate:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700a0
    .end annotation
.end field

.field private img_frequent:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700a1
    .end annotation
.end field

.field private img_recent:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700a5
    .end annotation
.end field

.field private iv_alpha_navy:Landroid/view/View;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ab
    .end annotation
.end field

.field private iv_del:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700b2
    .end annotation
.end field

.field private iv_input:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700b7
    .end annotation
.end field

.field private iv_keyboard:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700b8
    .end annotation
.end field

.field private mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

.field private mFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

.field private mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

.field private mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

.field private mRecentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

.field private myDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

.field private myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

.field private nameFromBundle:Ljava/lang/String;

.field private phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

.field private prg_contacts:Landroid/widget/ProgressBar;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070109
    .end annotation
.end field

.field private prg_frequent:Landroid/widget/ProgressBar;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070107
    .end annotation
.end field

.field private prg_recent:Landroid/widget/ProgressBar;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070108
    .end annotation
.end field

.field private qd_frag_contact_empty_tv:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07010f
    .end annotation
.end field

.field private rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07012d
    .end annotation
.end field

.field private rv_dial_plate:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070079
    .end annotation
.end field

.field private rv_frequent:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07012f
    .end annotation
.end field

.field private rv_recent:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070130
    .end annotation
.end field

.field private rv_search:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070131
    .end annotation
.end field

.field private searchAdapter:Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation
.end field

.field private sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070110
    .end annotation
.end field

.field private testDownCount:I

.field private tv_fail_call_log:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070088
    .end annotation
.end field

.field private tv_fail_contacts:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070089
    .end annotation
.end field

.field private tv_input:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070171
    .end annotation
.end field

.field private tv_no_callLog:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070169
    .end annotation
.end field

.field private tv_no_frequent:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700f4
    .end annotation
.end field

.field private tv_num0:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070178
    .end annotation
.end field

.field private tv_num1:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070179
    .end annotation
.end field

.field private tv_num2:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07017a
    .end annotation
.end field

.field private tv_num3:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07017b
    .end annotation
.end field

.field private tv_num4:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07017c
    .end annotation
.end field

.field private tv_num5:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07017d
    .end annotation
.end field

.field private tv_num6:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07017e
    .end annotation
.end field

.field private tv_num7:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07017f
    .end annotation
.end field

.field private tv_num8:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070180
    .end annotation
.end field

.field private tv_num9:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070181
    .end annotation
.end field

.field private tv_num_sharp:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070182
    .end annotation
.end field

.field private tv_num_star:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070183
    .end annotation
.end field

.field private tv_search_contacts:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070187
    .end annotation
.end field

.field private tv_search_result:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070188
    .end annotation
.end field

.field private v_word_bg:Landroid/view/View;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701ab
    .end annotation
.end field

.field private view_alpha_frontier:Landroid/view/View;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07003f
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 564
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EMPTY:I

    const/4 v0, 0x2

    .line 86
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EDIT:I

    const/4 v0, 0x3

    .line 87
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ADDING:I

    const/4 v0, 0x4

    .line 88
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_NORMAL:I

    const/4 v0, 0x5

    .line 89
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ABNORMAL:I

    const/4 v0, 0x6

    .line 90
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_LOADING:I

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->nameFromBundle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->testDownCount:I

    .line 101
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 142
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$2;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    .line 151
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$3;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->conn:Landroid/content/ServiceConnection;

    .line 178
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$4;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$4;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->connIfly:Landroid/content/ServiceConnection;

    .line 565
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 570
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 85
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EMPTY:I

    const/4 p2, 0x2

    .line 86
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EDIT:I

    const/4 p2, 0x3

    .line 87
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ADDING:I

    const/4 p2, 0x4

    .line 88
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_NORMAL:I

    const/4 p2, 0x5

    .line 89
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ABNORMAL:I

    const/4 p2, 0x6

    .line 90
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_LOADING:I

    const-string p2, ""

    .line 91
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->nameFromBundle:Ljava/lang/String;

    const/4 p2, 0x0

    .line 94
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->testDownCount:I

    .line 101
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 142
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$2;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    .line 151
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$3;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$3;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->conn:Landroid/content/ServiceConnection;

    .line 178
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$4;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$4;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->connIfly:Landroid/content/ServiceConnection;

    .line 571
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 85
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EMPTY:I

    const/4 p2, 0x2

    .line 86
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EDIT:I

    const/4 p2, 0x3

    .line 87
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ADDING:I

    const/4 p2, 0x4

    .line 88
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_NORMAL:I

    const/4 p2, 0x5

    .line 89
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ABNORMAL:I

    const/4 p2, 0x6

    .line 90
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_LOADING:I

    const-string p2, ""

    .line 91
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->nameFromBundle:Ljava/lang/String;

    const/4 p2, 0x0

    .line 94
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->testDownCount:I

    .line 101
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 142
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$2;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    .line 151
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$3;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$3;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->conn:Landroid/content/ServiceConnection;

    .line 178
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$4;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$4;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->connIfly:Landroid/content/ServiceConnection;

    .line 577
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 581
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 85
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EMPTY:I

    const/4 p2, 0x2

    .line 86
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_EDIT:I

    const/4 p2, 0x3

    .line 87
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ADDING:I

    const/4 p2, 0x4

    .line 88
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_NORMAL:I

    const/4 p2, 0x5

    .line 89
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_ABNORMAL:I

    const/4 p2, 0x6

    .line 90
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->VIEW_LOADING:I

    const-string p2, ""

    .line 91
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->nameFromBundle:Ljava/lang/String;

    const/4 p2, 0x0

    .line 94
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->testDownCount:I

    .line 101
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 142
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$2;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    .line 151
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$3;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$3;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->conn:Landroid/content/ServiceConnection;

    .line 178
    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$4;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$4;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->connIfly:Landroid/content/ServiceConnection;

    .line 582
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/phone/PhoneView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/google/gson/Gson;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/phone/PhoneView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/Button;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchView(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setFrequentView(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_search_result:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setRecentView(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mRecentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->nameFromBundle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->searContactsByBundle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_frequent:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->searchAdapter:Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-object p0
.end method

.method static synthetic access$802(Lcom/neusoft/qdrivelink/phone/PhoneView;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p0
.end method

.method private initContactsView(Landroid/content/Context;)V
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setTag(Ljava/lang/Object;)V

    .line 810
    new-instance v0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    invoke-direct {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    .line 811
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->setData(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 812
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 813
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$8;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView$8;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 819
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_reload:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_up:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_down:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDialPlate(Landroid/content/Context;)V
    .locals 4

    .line 831
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$9;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$9;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 857
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$10;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView$10;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->searchAdapter:Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;

    .line 891
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 892
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_search:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x1

    .line 893
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 894
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_search:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->searchAdapter:Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 896
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$11;

    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->initNums()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/neusoft/qdrivelink/phone/PhoneView$11;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;)V

    .line 932
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 933
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_dial_plate:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 935
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 936
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_dial_plate:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 937
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_dial:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_del:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_del:Landroid/widget/ImageView;

    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$12;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$12;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 950
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num0:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num1:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num2:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num3:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num4:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num5:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num6:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num7:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num8:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num9:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num_star:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num_sharp:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    return-void
.end method

.method private initFrequentView(Landroid/content/Context;)V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    const v1, 0x7f07004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_frequent:Landroid/widget/ProgressBar;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 688
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView$6;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    .line 780
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 781
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x1

    .line 782
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 783
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 784
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setTag(Ljava/lang/Object;)V

    .line 786
    new-instance v0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-direct {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    .line 787
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->setData(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 788
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 789
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$7;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$7;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 805
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_submit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initRecentView(Landroid/content/Context;)V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setRecentView(I)V

    .line 621
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView$5;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mRecentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    .line 677
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 678
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    .line 679
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 680
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mRecentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 681
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_call_log_reload:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initService()V
    .locals 4

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0a003a

    .line 591
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 592
    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhonePresenter;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhonePresenter;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    .line 593
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 594
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->gson:Lcom/google/gson/Gson;

    .line 596
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initFrequentView(Landroid/content/Context;)V

    .line 597
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initRecentView(Landroid/content/Context;)V

    .line 598
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initContactsView(Landroid/content/Context;)V

    .line 599
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initDialPlate(Landroid/content/Context;)V

    .line 601
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_call_log:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_contacts:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_dial_plate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_add_frequent:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getFrequent(Landroid/content/Context;)V

    .line 608
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getContacts(Landroid/content/Context;)V

    .line 609
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getCallLog(Landroid/content/Context;)V

    .line 611
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->initService()V

    const p1, 0x7f070047

    .line 613
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchView(I)V

    return-void
.end method

.method private searContactsByBundle(Ljava/lang/String;)V
    .locals 6

    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, ""

    .line 1263
    iput-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->nameFromBundle:Ljava/lang/String;

    .line 1264
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1265
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pinyin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<<<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1267
    new-instance v4, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-direct {v4}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;-><init>()V

    .line 1268
    invoke-virtual {v4, p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setName(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v4, v2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setSortKey(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v4, v3}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyin(Ljava/lang/String;)V

    .line 1271
    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getPositonbyPinyin(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    move-result-object p1

    .line 1272
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getMatch()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getMatch()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1287
    :cond_1
    sget-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 1295
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 1298
    :goto_0
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1299
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getPosition()I

    move-result p1

    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->getHeadViewHeight()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelectionFromTop(II)V

    .line 1300
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPhoneAdapter:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->notifyDataSetChanged()V

    .line 1304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "period:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method private setFrequentView(I)V
    .locals 7

    const/16 v0, 0x8

    const v1, 0x7f07004e

    if-ne p1, v1, :cond_7

    .line 306
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 308
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_frequent:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 310
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 311
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_no_frequent:Landroid/widget/TextView;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_add_frequent:Landroid/widget/Button;

    if-ne p1, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 315
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_frequent:Landroid/widget/ProgressBar;

    const/4 v6, 0x6

    if-ne v1, v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_up:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_down:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    if-ne v1, v4, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v5, v6}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setVisibility(I)V

    .line 319
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->view_alpha_frontier:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_alpha_navy:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_submit:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_frequent:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_up:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_down:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {v1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->view_alpha_frontier:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_alpha_navy:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_submit:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_5
    if-ne p1, v4, :cond_8

    .line 334
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_submit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 337
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_frequent:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_no_frequent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_add_frequent:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_submit:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    :goto_6
    return-void
.end method

.method private setRecentView(I)V
    .locals 5

    const/16 v0, 0x8

    const v1, 0x7f070047

    if-ne p1, v1, :cond_5

    .line 270
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 271
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_recent:Landroid/widget/ProgressBar;

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_no_callLog:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_fail_call_log:Landroid/widget/TextView;

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_call_log_reload:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 277
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_recent:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_no_callLog:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_fail_call_log:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_call_log_reload:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private switchContactsView(I)V
    .locals 5

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 223
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    const v0, 0x7f070049

    const/16 v2, 0x8

    if-ne p1, v0, :cond_6

    .line 225
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 226
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_contacts:Landroid/widget/ProgressBar;

    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_fail_contacts:Landroid/widget/TextView;

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->qd_frag_contact_empty_tv:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_reload:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_up:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->v_word_bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_down:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->view_alpha_frontier:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_alpha_navy:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    if-ne p1, v3, :cond_5

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setVisibility(I)V

    goto :goto_6

    .line 243
    :cond_6
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->prg_contacts:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_fail_contacts:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->qd_frag_contact_empty_tv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_reload:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_up:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_down:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->view_alpha_frontier:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_alpha_navy:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private switchDialView(I)V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const v3, 0x7f07004b

    if-ne p1, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_dial:Landroid/widget/Button;

    if-ne p1, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_del:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_search_result:Landroid/widget/TextView;

    if-ne p1, v3, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_search:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v3, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->iv_input:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_search_contacts:Landroid/widget/TextView;

    if-ne p1, v3, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->group_keys:Landroidx/constraintlayout/widget/Group;

    if-ne p1, v3, :cond_7

    goto :goto_7

    :cond_7
    const/16 v1, 0x8

    :goto_7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method private switchNaviButtonView(I)V
    .locals 7

    .line 287
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    const v1, 0x7f07004e

    if-ne p1, v1, :cond_0

    const v2, 0x7f04001f

    goto :goto_0

    :cond_0
    const v2, 0x7f0400b6

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 288
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    const v2, 0x7f0400a5

    const v3, 0x7f0400a2

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-ne p1, v1, :cond_1

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 289
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->img_frequent:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    const v1, 0x7f0b008a

    goto :goto_2

    :cond_2
    const v1, 0x7f0b008b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 291
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_call_log:Landroid/widget/Button;

    const v1, 0x7f040069

    const v4, 0x7f04006a

    const v5, 0x7f070047

    if-ne p1, v5, :cond_3

    const v6, 0x7f040069

    goto :goto_3

    :cond_3
    const v6, 0x7f04006a

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 292
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_call_log:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-ne p1, v5, :cond_4

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    :goto_4
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 293
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->img_recent:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_5

    const v5, 0x7f0b0086

    goto :goto_5

    :cond_5
    const v5, 0x7f0b0085

    :goto_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_contacts:Landroid/widget/Button;

    const v5, 0x7f070049

    if-ne p1, v5, :cond_6

    const v6, 0x7f040069

    goto :goto_6

    :cond_6
    const v6, 0x7f04006a

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 296
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_contacts:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-ne p1, v5, :cond_7

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    goto :goto_7

    :cond_7
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    :goto_7
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->img_contacts:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_8

    const v5, 0x7f0b0070

    goto :goto_8

    :cond_8
    const v5, 0x7f0b006f

    :goto_8
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_dial_plate:Landroid/widget/Button;

    const v5, 0x7f07004b

    if-ne p1, v5, :cond_9

    goto :goto_9

    :cond_9
    const v1, 0x7f04006a

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 300
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_dial_plate:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-ne p1, v5, :cond_a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_a

    :cond_a
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 301
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->img_dial_plate:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_b

    const p1, 0x7f0b008e

    goto :goto_b

    :cond_b
    const p1, 0x7f0b008f

    :goto_b
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private switchView(I)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchNaviButtonView(I)V

    .line 209
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setRecentView(I)V

    .line 210
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchContactsView(I)V

    .line 211
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchDialView(I)V

    .line 212
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setFrequentView(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_3

    .line 1071
    :pswitch_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto/16 :goto_3

    .line 1075
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1081
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1031
    :pswitch_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1033
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->PreSection()V

    goto/16 :goto_3

    .line 1036
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->PreSection()V

    goto/16 :goto_3

    .line 985
    :pswitch_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_5

    .line 986
    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 987
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->getTempdatas()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr v2, p1

    const/16 p1, 0xa

    if-le v2, p1, :cond_3

    .line 988
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0d0077

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->showToastShort(Ljava/lang/String;)V

    .line 989
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->clearTempdatas()V

    .line 990
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 992
    :cond_3
    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    const-string p1, "PhoneModel.frequentList.size()----PhoneModel.frequentList == null"

    .line 993
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 994
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->getTempdatas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneModel.frequentList.size()-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "PhoneModel.frequentList.size()----PhoneModel.frequentList != null"

    .line 997
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 998
    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->getTempdatas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1001
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->gson:Lcom/google/gson/Gson;

    sget-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1002
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "frequent"

    invoke-static {v2, v3, p1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->clearTempdatas()V

    .line 1005
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mAddFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->notifyDataSetChanged()V

    .line 1006
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setFrequentData()V

    .line 1007
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1011
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setTag(Ljava/lang/Object;)V

    .line 1012
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mFrequentAdapter:Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->notifyDataSetChanged()V

    .line 1014
    :goto_1
    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    const-string v2, "PhoneModel.frequentList"

    if-eqz p1, :cond_6

    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 1015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "--PhoneModel.frequentList.size()"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1016
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 1019
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1020
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 1022
    :goto_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchView(I)V

    goto/16 :goto_3

    .line 1040
    :pswitch_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 1042
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->NextSection()V

    goto/16 :goto_3

    .line 1045
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_add_frequent:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->NextSection()V

    goto/16 :goto_3

    .line 970
    :pswitch_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1049
    :pswitch_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 1050
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getCallLog(Landroid/content/Context;)V

    .line 1051
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchView(I)V

    goto :goto_3

    .line 973
    :sswitch_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 977
    :cond_8
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 978
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_input:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    sub-int/2addr p1, v1

    invoke-interface {v3, v2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1026
    :sswitch_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->sllvContacts:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setTag(Ljava/lang/Object;)V

    .line 1027
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchView(I)V

    .line 1028
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getContacts(Landroid/content/Context;)V

    goto :goto_3

    .line 1057
    :pswitch_6
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->switchView(I)V

    goto :goto_3

    .line 981
    :sswitch_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->rv_frequent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 982
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->btn_frequent_contacts:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setFrequentView(I)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07003c -> :sswitch_3
        0x7f07004e -> :sswitch_2
        0x7f070052 -> :sswitch_1
        0x7f0700b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f070047
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f070056
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f070178
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAddFrequentData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/PhoneView$16;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallLogData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1094
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;

    invoke-direct {v0, p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView$13;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallLogFailView()V
    .locals 2

    .line 1309
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$17;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$17;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContactsData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView$14;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContactsFailView()V
    .locals 2

    .line 1359
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$21;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$21;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFrequentData()V
    .locals 2

    .line 1159
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$15;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$15;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->mPresenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setPresenter(Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V

    return-void
.end method

.method public setSearchEndView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;)V"
        }
    .end annotation

    .line 1339
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$20;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneView$20;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSearchFailView()V
    .locals 2

    .line 1319
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$18;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$18;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSearchLoadingView()V
    .locals 2

    .line 1329
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneView$19;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$19;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public viewDestroy()V
    .locals 2

    .line 1372
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    .line 1373
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public viewResume()V
    .locals 4

    .line 1197
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 1199
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1200
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->getPhoneState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->simReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->simReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 1202
    new-instance v2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    goto :goto_0

    .line 1204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->getPhoneState()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1207
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getParam()Landroid/os/Bundle;

    .line 1242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    .line 1243
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_1

    .line 1245
    :cond_2
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1247
    :goto_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 1249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1250
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num1:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num3:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num6:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num4:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num9:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num7:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num_sharp:Landroid/widget/TextView;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView;->tv_num_star:Landroid/widget/TextView;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
