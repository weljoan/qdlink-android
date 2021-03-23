.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;
.super Ljava/lang/Object;
.source "LegalApp.java"


# instance fields
.field private carFactory:Ljava/lang/String;

.field private carType:Ljava/lang/String;

.field private huFactory:Ljava/lang/String;

.field private legal_app_watch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarFactory()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->carFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getCarType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->carType:Ljava/lang/String;

    return-object v0
.end method

.method public getHuFactory()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->huFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getLegal_app_watch()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->legal_app_watch:I

    return v0
.end method

.method public setCarFactory(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->carFactory:Ljava/lang/String;

    return-void
.end method

.method public setCarType(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->carType:Ljava/lang/String;

    return-void
.end method

.method public setHuFactory(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->huFactory:Ljava/lang/String;

    return-void
.end method

.method public setLegal_app_watch(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->legal_app_watch:I

    return-void
.end method
