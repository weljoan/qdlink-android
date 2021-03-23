.class public Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;
.super Ljava/lang/Object;
.source "MyAppInformationBean.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "MyAppInformationBean"
.end annotation


# static fields
.field public static final TYPE_ADD:I = 0x1

.field public static final TYPE_APP:I


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private appType:I

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
        property = "NOT NULL"
    .end annotation
.end field

.field private isSelected:Z

.field private packageName:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "packageName"
    .end annotation
.end field

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->packageName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->versionName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->versionCode:I

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    iput v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appType:I

    .line 31
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->id:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->isSelected:Z

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppType(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->appType:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->id:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->isSelected:Z

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/bean/MyAppInformationBean;->versionName:Ljava/lang/String;

    return-void
.end method
