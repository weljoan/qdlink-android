.class public Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
        ">;"
    }
.end annotation


# static fields
.field static emoji:C = '\u001f'

.field private static volatile instance:Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[\\ud800\\udc00-\\udbff\\udfff\\ud800-\\udfff]"

    const-string v1, ""

    .line 311
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBrace(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ")I"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 241
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyinName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyinName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getInstance()Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;
    .locals 1

    .line 20
    sget-object v0, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->instance:Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    invoke-direct {v0}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->instance:Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    .line 21
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->instance:Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    return-object v0
.end method

.method public static getPositonbyPinyin(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ")",
            "Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;"
        }
    .end annotation

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3a98

    .line 111
    invoke-static {p0, p1, v2}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getSearchExact(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getMatch()I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v4

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5339\u914d\u4e2d:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    aget-char v5, v5, v6

    const/16 v7, 0x61

    if-lt v5, v7, :cond_1

    const/16 v7, 0x7a

    if-le v5, v7, :cond_2

    :cond_1
    const/16 v7, 0x41

    if-lt v5, v7, :cond_3

    const/16 v7, 0x5a

    if-gt v5, v7, :cond_3

    .line 124
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v5, "a"

    .line 129
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyinName(Ljava/lang/String;)V

    .line 131
    invoke-static {p0, p1}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getBrace(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    if-lez v7, :cond_4

    move v4, v7

    .line 156
    :cond_4
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v7

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0xffff

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setPinyinName(Ljava/lang/String;)V

    .line 158
    invoke-static {p0, p1}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getBrace(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    .line 159
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v7, v8, :cond_5

    goto :goto_1

    :cond_5
    move v5, v7

    .line 160
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "high:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-low"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    if-le v4, v2, :cond_7

    sub-int v7, v5, v4

    if-gt v7, v2, :cond_7

    move v2, v4

    :goto_2
    if-ge v2, v5, :cond_7

    .line 164
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v7}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->filterEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7cbe\u786e\u5339\u914d:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 166
    new-instance p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    invoke-direct {p0, v6, v2}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    sub-int v2, v5, v4

    const/16 v6, 0x3e8

    const-string v7, "_"

    const-string v8, "itme_pinyin"

    if-gt v2, v6, :cond_9

    .line 172
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    move-result-object v2

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v2, v6, v9}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_9

    .line 174
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    move-result-object v10

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v11}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 175
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u540c\u97f3\u5339\u914d:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v12}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 181
    new-instance p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    invoke-direct {p0, v9, v6}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    move v2, v4

    :goto_4
    const-string v6, "\u540c\u97f3\u8282\u5339\u914d:"

    if-ge v2, v5, :cond_b

    .line 188
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    move-result-object v9

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v10}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 195
    new-instance p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v2}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 218
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "temp\u5339\u914d:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getMatch()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getPosition()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_c

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u5df2\u5339\u914d:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;->getMatch()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v3

    .line 224
    :cond_c
    new-instance p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v4}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p0
.end method

.method private static getSearchExact(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            "I)",
            "Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 261
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_1
    if-ge v2, p2, :cond_5

    .line 263
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 264
    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->filterEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u7cbe\u786e\u5339\u914d:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 266
    new-instance p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    invoke-direct {p0, v0, v2}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p0

    :cond_1
    const-string v7, ""

    if-ne v3, v1, :cond_2

    .line 269
    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v10, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->emoji:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u6309\u97f3\u8282\u76f8\u540c\u67e5\u627e\u5339\u914d\u9879:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    move v3, v2

    :cond_2
    if-ne v4, v1, :cond_3

    if-ne v3, v1, :cond_3

    .line 279
    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->filterEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u6309\u6c49\u5b57\u67e5\u627e\u8fd1\u4f3c\u5339\u914d\u9879:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    move v4, v2

    :cond_3
    if-ne v5, v1, :cond_4

    if-ne v4, v1, :cond_4

    .line 286
    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v10, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->emoji:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getPinyin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6309\u62fc\u97f3\u67e5\u627e\u8fd1\u4f3c\u5339\u914d\u9879:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    move v5, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    if-eq v3, v1, :cond_6

    const-string p0, "getSearchExact\u76f8\u4f3c"

    .line 294
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 295
    new-instance p0, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v3}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p0

    :cond_6
    const/4 p0, 0x5

    if-eq v4, v1, :cond_7

    const-string p1, "getSearchExact\u90e8\u5206\u5339\u914d\u6c49\u5b57"

    .line 298
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 299
    new-instance p1, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    invoke-direct {p1, p0, v4}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p1

    :cond_7
    const-string p1, "getSearchExact\u90e8\u5206\u5339\u914d\u62fc\u97f3"

    .line 302
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 303
    new-instance p1, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;

    invoke-direct {p1, p0, v5}, Lcom/neusoft/qdrivelink/phone/bean/SearchResultBean;-><init>(II)V

    return-object p1
.end method

.method public static insertBySort(Ljava/util/ArrayList;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 95
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/neusoft/qdrivelink/phone/bean/SortBean;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)I
    .locals 2

    .line 24
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    check-cast p2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->compare(Lcom/neusoft/qdrivelink/phone/bean/SortBean;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)I

    move-result p1

    return p1
.end method

.method public getPinyinCapital(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 60
    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/Utils/CharacterParserUtil;->convertPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "line.separator"

    .line 61
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 62
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 68
    aget-char v0, p1, v2

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    aget-char v0, p1, v2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 69
    aget-char v0, p1, v2

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    aput-char v0, p1, v2

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 75
    :cond_2
    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/Utils/UnicodeGBK2Alpha;->getFirstCharOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/Utils/UnicodeGBK2Alpha;->getFirstCharOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Z"

    return-object p1
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "[A-Z]"

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/Utils/CharacterParserUtil;->convertPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 47
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "#"

    return-object p1
.end method
