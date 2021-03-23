.class public Lnet/sourceforge/pinyin4j/PinyinHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToGwoyeuRomatzyhStringArray(C)[Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhTranslator;->convertHanyuPinyinToGwoyeuRomatzyh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    sget-object v3, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->HANYU_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {v2, v3, p1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationTranslator;->convertRomanizationSystem(Ljava/lang/String;Lnet/sourceforge/pinyin4j/PinyinRomanizationType;Lnet/sourceforge/pinyin4j/PinyinRomanizationType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFirstHanyuPinyinString(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getFormattedHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFormattedHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lnet/sourceforge/pinyin4j/PinyinFormatter;->formatHanyuPinyin(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toGwoyeuRomatzyhStringArray(C)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToGwoyeuRomatzyhStringArray(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHanyuPinyinString(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getFirstHanyuPinyinString(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getFormattedHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMPS2PinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->MPS2_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTongyongPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->TONGYONG_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toWadeGilesPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->WADEGILES_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toYalePinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->YALE_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
