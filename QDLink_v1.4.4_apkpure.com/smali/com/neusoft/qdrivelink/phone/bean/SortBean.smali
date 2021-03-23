.class public Lcom/neusoft/qdrivelink/phone/bean/SortBean;
.super Ljava/lang/Object;
.source "SortBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private checked:I

.field private icon_id:J

.field private isSpecial:Z

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private pinyinName:Ljava/lang/String;

.field private representPosition:I

.field private sortKey:Ljava/lang/String;

.field private temp_first:Ljava/lang/String;

.field private title_icon:Landroid/graphics/Bitmap;

.field private title_icon_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->isSpecial:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->representPosition:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 126
    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 127
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->pinyinName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyinName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 84
    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 85
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChecked()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->checked:I

    return v0
.end method

.method public getIcon_id()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->icon_id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentPosition()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->representPosition:I

    return v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp_first()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->temp_first:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_icon()Landroid/graphics/Bitmap;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->title_icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle_icon_str()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->title_icon_str:Ljava/lang/String;

    return-object v0
.end method

.method public isSpecial()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->isSpecial:Z

    return v0
.end method

.method public setChecked(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->checked:I

    return-void
.end method

.method public setIcon_id(J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->icon_id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->number:Ljava/lang/String;

    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->pinyin:Ljava/lang/String;

    return-void
.end method

.method public setPinyinName(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->pinyinName:Ljava/lang/String;

    return-void
.end method

.method public setRepresentPosition(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->representPosition:I

    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->sortKey:Ljava/lang/String;

    return-void
.end method

.method public setSpecial(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->isSpecial:Z

    return-void
.end method

.method public setTemp_first(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->temp_first:Ljava/lang/String;

    return-void
.end method

.method public setTitle_icon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->title_icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTitle_icon_str(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->title_icon_str:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SortBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title_icon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->title_icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", title_icon_str=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->title_icon_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", temp_first=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->temp_first:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pinyin=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pinyinName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->pinyinName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", icon_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->icon_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->checked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSpecial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->isSpecial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", representPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->representPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
