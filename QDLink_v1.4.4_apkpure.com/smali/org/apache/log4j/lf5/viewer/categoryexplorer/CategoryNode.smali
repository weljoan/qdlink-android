.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
.super Ljavax/swing/tree/DefaultMutableTreeNode;
.source "CategoryNode.java"


# static fields
.field private static final serialVersionUID:J = 0x52b29a36eefed5e7L


# instance fields
.field protected _hasFatalChildren:Z

.field protected _hasFatalRecords:Z

.field protected _numberOfContainedRecords:I

.field protected _numberOfRecordsFromChildren:I

.field protected _selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    .line 43
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    .line 44
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    .line 45
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRecord()V
    .locals 1

    .line 125
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    .line 126
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordToParent()V

    return-void
.end method

.method protected addRecordFromChild()V
    .locals 1

    .line 168
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    .line 169
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordToParent()V

    return-void
.end method

.method protected addRecordToParent()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordFromChild()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 108
    instance-of v0, p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    if-eqz v0, :cond_0

    .line 109
    check-cast p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 110
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNumberOfContainedRecords()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    return v0
.end method

.method protected getNumberOfRecordsFromChildren()I
    .locals 1

    .line 173
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getTotalNumberOfRecords()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfRecordsFromChildren()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfContainedRecords()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasFatalChildren()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    return v0
.end method

.method public hasFatalRecords()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    return v0
.end method

.method public resetNumberOfContainedRecords()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    .line 135
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    .line 136
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    .line 137
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    return-void
.end method

.method public setAllDescendantsDeSelected()V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->children()Ljava/util/Enumeration;

    move-result-object v0

    .line 96
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    const/4 v2, 0x0

    .line 98
    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 99
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setAllDescendantsDeSelected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAllDescendantsSelected()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->children()Ljava/util/Enumeration;

    move-result-object v0

    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 87
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setAllDescendantsSelected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHasFatalChildren(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    return-void
.end method

.method public setHasFatalRecords(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    if-eq p1, v0, :cond_0

    .line 71
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
