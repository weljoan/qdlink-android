.class public Lcom/neusoft/qdrivelink/interconnection/bean/AdbCopyBean;
.super Ljava/lang/Object;
.source "AdbCopyBean.java"


# instance fields
.field private key:Ljava/lang/String;

.field private md5Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/AdbCopyBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Value()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/AdbCopyBean;->md5Value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/AdbCopyBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setMd5Value(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/AdbCopyBean;->md5Value:Ljava/lang/String;

    return-void
.end method
