.class public Lcom/neusoft/qdrivelink/phone/Utils/CharacterParserUtil;
.super Ljava/lang/Object;
.source "CharacterParserUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    .line 16
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 20
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "line.separator"

    .line 21
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 9
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/qdrivelink/phone/Utils/CharacterParserUtil;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
