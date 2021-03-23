.class public Lcom/neusoft/qdrivelink/phone/PhoneModel;
.super Ljava/lang/Object;
.source "PhoneModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;
    }
.end annotation


# static fields
.field public static final CHECK:I = 0x1

.field public static final CHECKED:I = 0x2

.field private static COUNT:I = 0x0

.field static CallLogsStrings:[Ljava/lang/String; = null

.field public static NumNamehashMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNCHECK:I = 0x0

.field private static callLog:[Ljava/lang/String; = null

.field public static calllast_id:I = 0x0

.field public static callog4phone:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static contactsStrings:[Ljava/lang/String; = null

.field public static dateBeans:[Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean; = null

.field public static frequentList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation
.end field

.field static hour_sfd:Ljava/text/SimpleDateFormat; = null

.field public static isReadConctacts:Z = false

.field private static limitDateCount:I

.field private static limitDateStr:Ljava/lang/String;

.field public static mContactsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation
.end field

.field public static sectionPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static tempNume:Ljava/lang/String;

.field static today_sfd:Ljava/text/SimpleDateFormat;

.field private static uri:Landroid/net/Uri;

.field static year_sfd:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->hour_sfd:Ljava/text/SimpleDateFormat;

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->year_sfd:Ljava/text/SimpleDateFormat;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->today_sfd:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 61
    sput v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->calllast_id:I

    .line 62
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->uri:Landroid/net/Uri;

    const-string v0, "display_name"

    const-string v1, "sort_key"

    const-string v2, "data1"

    const-string v3, "photo_id"

    const-string v4, "contact_id"

    .line 63
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->contactsStrings:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "date"

    const-string v3, "type"

    const-string v4, "name"

    const-string v5, "number"

    const-string v6, "numbertype"

    const-string v7, "numberlabel"

    .line 69
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callLog:[Ljava/lang/String;

    const-string v0, "number"

    const-string v1, "name"

    const-string v2, "type"

    const-string v3, "date"

    const-string v4, "_id"

    .line 79
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->CallLogsStrings:[Ljava/lang/String;

    const/16 v0, 0xa

    .line 85
    sput v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->limitDateCount:I

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->NumNamehashMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 90
    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->tempNume:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 45
    sget v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->COUNT:I

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 45
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->initDateBeans()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callLog:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->limitDateStr:Ljava/lang/String;

    return-object v0
.end method

.method private static getBitmapBynumber(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/data/phones/filter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 605
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 607
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "contact_id"

    .line 609
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 611
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    .line 613
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 615
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getFrequent(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V
    .locals 2

    const-string v0, "frequent"

    const-string v1, ""

    .line 589
    invoke-static {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 590
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 591
    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneModel$3;

    invoke-direct {v1}, Lcom/neusoft/qdrivelink/phone/PhoneModel$3;-><init>()V

    .line 592
    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/phone/PhoneModel$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 591
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    sput-object p0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    .line 593
    sget-object p0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->frequentEnd(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static getLastCallLog(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 684
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v1, "last callLog"

    .line 685
    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 687
    :try_start_0
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->CallLogsStrings:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_6

    :try_start_1
    const-string v1, "logs table"

    .line 690
    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 691
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return-object v8

    .line 701
    :cond_0
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callLog:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "logs null calls table"

    .line 706
    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 707
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callLog:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "logs error calls table"

    .line 713
    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 714
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callLog:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    .line 718
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 721
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 722
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 723
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 724
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->calllast_id:I

    if-gt v4, v5, :cond_2

    .line 726
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    sput p0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->calllast_id:I

    return-object v8

    :cond_2
    const/4 v4, 0x4

    .line 729
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getNameBynumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 730
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p0, :cond_5

    .line 732
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p0, :cond_4

    goto :goto_1

    .line 736
    :cond_4
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 739
    :cond_5
    :goto_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->calllast_id:I

    const-string v5, "strNumber"

    .line 740
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "strName"

    .line 741
    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "type"

    .line 742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v0, Ljava/util/Date;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 744
    sget-object v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->NumNamehashMap:Ljava/util/HashMap;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "time"

    .line 745
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object p0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 747
    sget-object p0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->NumNamehashMap:Ljava/util/HashMap;

    invoke-interface {p1, p0, v0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 748
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "callog4phone size"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception p0

    .line 754
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callog4phone sizee:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_6
    return-object v8
.end method

.method public static getNameBynumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 507
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p0, "_id"

    const-string p1, "number"

    const-string v3, "display_name"

    const-string v4, "type"

    const-string v5, "label"

    filled-new-array {p0, p1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 513
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 514
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x2

    .line 515
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 518
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getNamesBynumbers(Ljava/util/ArrayList;Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 559
    :try_start_0
    sget-object v3, Lcom/neusoft/qdrivelink/phone/PhoneModel;->uri:Landroid/net/Uri;

    sget-object v4, Lcom/neusoft/qdrivelink/phone/PhoneModel;->contactsStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object v1

    .line 566
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 568
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 569
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->delRedundancy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 571
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 573
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contains_number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 579
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static getNamesBynumbers(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 535
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id"

    const-string v6, "number"

    const-string v7, "display_name"

    const-string v8, "type"

    const-string v9, "label"

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 541
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 542
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x2

    .line 543
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getPhoneContacts(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;",
            ")",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 120
    sput-boolean v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->isReadConctacts:Z

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    move-object/from16 v4, p0

    check-cast v4, Landroid/app/Activity;

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    if-nez v4, :cond_0

    return-object v6

    .line 127
    :cond_0
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v4, "#"

    const-string v13, "a"

    const/4 v14, 0x1

    if-eqz v7, :cond_c

    .line 128
    sget-object v8, Lcom/neusoft/qdrivelink/phone/PhoneModel;->contactsStrings:[Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 129
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 132
    :try_start_0
    sget-object v8, Lcom/neusoft/qdrivelink/phone/PhoneModel;->uri:Landroid/net/Uri;

    sget-object v9, Lcom/neusoft/qdrivelink/phone/PhoneModel;->contactsStrings:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    const-string v1, "error"

    .line 138
    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->contactsFail(Ljava/lang/String;)V

    .line 139
    sput-boolean v14, Lcom/neusoft/qdrivelink/phone/PhoneModel;->isReadConctacts:Z

    return-object v6

    .line 141
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_b

    .line 144
    new-instance v9, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-direct {v9}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;-><init>()V

    .line 145
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    .line 146
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->delRedundancy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 147
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 148
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-static {v11}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->isTel(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_4

    .line 150
    :cond_2
    invoke-virtual {v9, v10}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v9, v11}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setNumber(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v9, v10}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setTemp_first(Ljava/lang/String;)V

    const/4 v11, 0x4

    .line 153
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 154
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v9, v11, v12}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setIcon_id(J)V

    .line 157
    invoke-virtual {v9, v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setTitle_icon(Landroid/graphics/Bitmap;)V

    .line 158
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    if-eqz v11, :cond_3

    .line 165
    invoke-virtual {v11}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v10

    .line 166
    invoke-virtual {v11}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyinName()Ljava/lang/String;

    move-result-object v12

    .line 167
    invoke-virtual {v11}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-virtual {v9, v10}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyin(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v9, v12}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyinName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v9, v11}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setSortKey(Ljava/lang/String;)V

    move-object v6, v11

    goto/16 :goto_2

    .line 173
    :cond_3
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 174
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 175
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    aget-char v14, v14, v1

    const/16 v1, 0x61

    if-lt v14, v1, :cond_4

    const/16 v1, 0x7a

    if-le v14, v1, :cond_5

    :cond_4
    const/16 v1, 0x41

    if-lt v14, v1, :cond_6

    const/16 v1, 0x5a

    if-gt v14, v1, :cond_6

    .line 177
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object/from16 v1, v16

    goto :goto_1

    :cond_6
    move-object v6, v4

    move-object v1, v13

    .line 184
    :goto_1
    invoke-virtual {v9, v11}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyin(Ljava/lang/String;)V

    .line 186
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyinName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v9, v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setSortKey(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v15, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :goto_2
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 194
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 195
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 199
    :cond_7
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_8
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 202
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    invoke-static {v8, v9}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->insertBySort(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V

    goto :goto_4

    .line 205
    :cond_9
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_a
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 208
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_0
    move-object v0, v6

    return-object v0

    :cond_c
    const/4 v8, 0x0

    .line 211
    :goto_5
    sput-object v8, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContactsData size"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    .line 215
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    new-instance v6, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-direct {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;-><init>()V

    if-ne v5, v4, :cond_d

    .line 218
    invoke-virtual {v6, v13}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyinName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v6, v13}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyin(Ljava/lang/String;)V

    goto :goto_7

    .line 222
    :cond_d
    invoke-virtual {v6, v5}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyinName(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v6, v5}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyin(Ljava/lang/String;)V

    .line 225
    :goto_7
    sget-object v7, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getBrace(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)I

    move-result v6

    .line 226
    sget-object v7, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v7}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    add-int/lit8 v6, v6, 0x1

    .line 229
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "section ss:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 230
    sget-object v7, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v8, 0x0

    aget-char v5, v5, v8

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 232
    :cond_f
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    sget-object v4, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->contactsEnd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    const/4 v0, 0x1

    .line 233
    sput-boolean v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->isReadConctacts:Z

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time---1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time---2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getPhoneContactsbyNum(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation

    .line 272
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-char v5, v0, v4

    .line 276
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContacts:getnums--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 284
    check-cast p0, Landroid/app/Activity;

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sections:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez p0, :cond_1

    return-object v4

    .line 287
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 288
    sget-object p0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->contactsStrings:[Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 289
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    :try_start_0
    sget-object v6, Lcom/neusoft/qdrivelink/phone/PhoneModel;->uri:Landroid/net/Uri;

    sget-object v7, Lcom/neusoft/qdrivelink/phone/PhoneModel;->contactsStrings:[Ljava/lang/String;

    const-string v8, "data1 LIKE ? "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v0, v9, v3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string p0, "error"

    .line 298
    invoke-interface {p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getContactsByNumsFail(Ljava/lang/String;)V

    return-object v4

    .line 301
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_5

    .line 303
    new-instance v4, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-direct {v4}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;-><init>()V

    .line 304
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 305
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->delRedundancy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContacts:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 307
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 308
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->isTel(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 310
    :cond_3
    invoke-virtual {v4, v5}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setName(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v4, v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setNumber(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getContacts2:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 302
    :cond_4
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 315
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    return-object v4

    :cond_6
    move-object p0, v4

    .line 317
    :goto_3
    invoke-interface {p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getContactsByNumsEnd(Ljava/util/ArrayList;)V

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "time---2:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPhoneContactsbyNumFromList(Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;

    invoke-direct {v1, p1, p0}, Lcom/neusoft/qdrivelink/phone/PhoneModel$1;-><init>(Ljava/lang/String;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhoto(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 767
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "data15"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/photo\'"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 773
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 774
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 775
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    array-length p1, v0

    invoke-static {v0, v7, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 780
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1
.end method

.method public static getPhoto(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 790
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 791
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "data15"

    const-string v1, "contact_id"

    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "contact_id>? AND mimetype=\'vnd.android.cursor.item/photo\'"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 797
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 798
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 800
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 801
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 804
    :cond_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 806
    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 807
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 811
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public static getrecord(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V
    .locals 2

    .line 389
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getInstance()Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;-><init>(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static initDateBeans()V
    .locals 7

    .line 625
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;

    .line 626
    sput-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->dateBeans:[Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v1, :cond_1

    const/4 v4, -0x1

    .line 628
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 629
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 630
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 631
    sget-object v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->year_sfd:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-static {v4}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->weekdayToStr(I)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    const-string v4, "\u6628\u5929"

    .line 634
    :cond_0
    sget-object v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->dateBeans:[Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;

    new-instance v6, Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;

    invoke-direct {v6, v3, v4}, Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    :cond_1
    sget v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->limitDateCount:I

    neg-int v2, v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 637
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 638
    sget-object v1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->year_sfd:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->limitDateStr:Ljava/lang/String;

    return-void
.end method

.method public static initNums()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/phone/bean/NumBean;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "1"

    const v3, 0x7f060098

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "2"

    const v3, 0x7f060099

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "3"

    const v3, 0x7f06009a

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "4"

    const v3, 0x7f06009b

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "5"

    const v3, 0x7f06009c

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "6"

    const v3, 0x7f06009d

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "7"

    const v3, 0x7f06009e

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "8"

    const v3, 0x7f06009f

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "9"

    const v3, 0x7f0600a0

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "*"

    const v3, 0x7f0600a1

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "0"

    const v3, 0x7f060097

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    const-string v2, "#"

    const v3, 0x7f0600a2

    invoke-direct {v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/bean/NumBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static refreshCallLog()V
    .locals 0

    .line 665
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->initDateBeans()V

    return-void
.end method

.method public static sortContectList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 371
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const-string v1, ""

    .line 373
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 374
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 375
    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {v2, v0}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setRepresentPosition(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static weekdayToStr(I)Ljava/lang/String;
    .locals 1

    const-string v0, "\u661f\u671f"

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 655
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u516d"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 653
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u4e94"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 651
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u56db"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 649
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u4e09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 647
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u4e8c"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 645
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u4e00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 657
    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u65e5"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
