.class public Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final a:[I

.field private static final b:I = 0x0

.field private static final c:[I

.field private static final d:I = 0x0

.field private static final e:[I

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:I = 0x5

.field private static final l:I = 0x6

.field private static final m:I = 0x7

.field private static final n:I

.field private static final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10102e2

    aput v3, v1, v2

    .line 43
    sput-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a:[I

    new-array v0, v0, [I

    const v1, 0x10102e1

    aput v1, v0, v2

    .line 48
    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->c:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->e:[I

    return-void

    :array_0
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 3

    .line 121
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 9

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 135
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_7

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "objectAnimator"

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-static {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v4, "animator"

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    invoke-static {p0, p2, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v4, "set"

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 149
    new-instance v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;-><init>()V

    .line 150
    sget-object v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 153
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 154
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 155
    iget v7, v5, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_4

    iget v6, v5, Landroid/util/TypedValue;->data:I

    .line 157
    :cond_4
    move-object v5, v3

    check-cast v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {p0, p1, p2, v5, v6}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 158
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    if-eqz p3, :cond_0

    if-nez v2, :cond_5

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown animator name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-eqz p3, :cond_a

    if-eqz v2, :cond_a

    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    add-int/lit8 v0, v6, 0x1

    .line 174
    aput-object p2, p0, v6

    move v6, v0

    goto :goto_2

    :cond_8
    if-nez p4, :cond_9

    .line 177
    invoke-virtual {p3, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->playTogether([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    goto :goto_3

    .line 179
    :cond_9
    invoke-virtual {p3, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->playSequentially([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    :cond_a
    :goto_3
    return-object v3
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;
    .locals 2

    .line 190
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;-><init>()V

    .line 192
    invoke-static {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 194
    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->c:[I

    .line 195
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 197
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 17

    move-object/from16 v0, p0

    .line 216
    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->e:[I

    move-object/from16 v2, p1

    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x2

    .line 221
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x7

    .line 223
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    if-nez p2, :cond_0

    .line 227
    new-instance v10, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-direct {v10}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p2

    :goto_0
    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x5

    .line 236
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    if-eqz v12, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_3

    .line 238
    iget v12, v12, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    const/4 v14, 0x6

    .line 239
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    if-eqz v16, :cond_5

    .line 241
    iget v15, v15, Landroid/util/TypedValue;->type:I

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    const/16 v2, 0x1f

    const/16 v3, 0x1c

    if-eqz v13, :cond_6

    if-lt v12, v3, :cond_6

    if-le v12, v2, :cond_7

    :cond_6
    if-eqz v16, :cond_8

    if-lt v15, v3, :cond_8

    if-gt v15, v2, :cond_8

    .line 249
    :cond_7
    new-instance v9, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ArgbEvaluator;

    invoke-direct {v9}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v10, v9}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    const/4 v9, 0x0

    :cond_8
    const/4 v2, 0x0

    if-eqz v9, :cond_e

    if-eqz v13, :cond_c

    if-ne v12, v11, :cond_9

    .line 257
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_6

    .line 259
    :cond_9
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    :goto_6
    if-eqz v16, :cond_b

    if-ne v15, v11, :cond_a

    .line 263
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_7

    .line 265
    :cond_a
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_7
    new-array v6, v6, [F

    const/4 v9, 0x0

    aput v3, v6, v9

    const/4 v12, 0x1

    aput v2, v6, v12

    .line 267
    invoke-virtual {v10, v6}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_b
    const/4 v9, 0x0

    const/4 v12, 0x1

    new-array v2, v12, [F

    aput v3, v2, v9

    .line 269
    invoke-virtual {v10, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_c
    const/4 v9, 0x0

    const/4 v12, 0x1

    if-ne v15, v11, :cond_d

    .line 273
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_8

    .line 275
    :cond_d
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_8
    new-array v3, v12, [F

    aput v2, v3, v9

    .line 277
    invoke-virtual {v10, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_e
    const/4 v9, 0x0

    if-eqz v13, :cond_14

    if-ne v12, v11, :cond_f

    .line 284
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    float-to-int v12, v12

    goto :goto_9

    :cond_f
    if-lt v12, v3, :cond_10

    const/16 v13, 0x1f

    if-gt v12, v13, :cond_10

    .line 287
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    goto :goto_9

    .line 289
    :cond_10
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    :goto_9
    if-eqz v16, :cond_13

    if-ne v15, v11, :cond_11

    .line 293
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_a

    :cond_11
    if-lt v15, v3, :cond_12

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_12

    .line 296
    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_a

    .line 298
    :cond_12
    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_a
    new-array v3, v6, [I

    aput v12, v3, v9

    const/4 v6, 0x1

    aput v2, v3, v6

    .line 300
    invoke-virtual {v10, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    :cond_13
    const/4 v6, 0x1

    new-array v2, v6, [I

    aput v12, v2, v9

    .line 302
    invoke-virtual {v10, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    :cond_14
    if-eqz v16, :cond_17

    if-ne v15, v11, :cond_15

    .line 307
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    if-lt v15, v3, :cond_16

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_16

    .line 310
    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_b

    .line 312
    :cond_16
    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    goto :goto_b

    :goto_c
    new-array v6, v3, [I

    aput v2, v6, v9

    .line 314
    invoke-virtual {v10, v6}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setIntValues([I)V

    .line 319
    :cond_17
    :goto_d
    invoke-virtual {v10, v4, v5}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 320
    invoke-virtual {v10, v7, v8}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v2, 0x3

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 324
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 323
    invoke-virtual {v10, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_18
    const/4 v2, 0x4

    .line 326
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    .line 328
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 327
    invoke-virtual {v10, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setRepeatMode(I)V

    .line 336
    :cond_19
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1a

    .line 338
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 340
    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10
.end method

.method public static loadAnimator(Landroid/content/Context;I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 5

    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1121
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v1, v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorInflater;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    move-result-object p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 114
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 108
    :goto_0
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v2

    :catch_3
    move-exception p0

    .line 102
    :goto_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_1

    .line 114
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p0
.end method
