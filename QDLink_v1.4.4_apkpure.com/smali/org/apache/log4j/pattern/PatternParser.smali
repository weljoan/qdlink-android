.class public final Lorg/apache/log4j/pattern/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;
    }
.end annotation


# static fields
.field private static final CONVERTER_STATE:I = 0x1

.field private static final DOT_STATE:I = 0x3

.field private static final ESCAPE_CHAR:C = '%'

.field private static final FILENAME_PATTERN_RULES:Ljava/util/Map;

.field private static final LITERAL_STATE:I = 0x0

.field private static final MAX_STATE:I = 0x5

.field private static final MIN_STATE:I = 0x4

.field private static final PATTERN_LAYOUT_RULES:Ljava/util/Map;

.field static synthetic class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 91
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    const-string v2, "org.apache.log4j.pattern.LoggerPatternConverter"

    if-nez v1, :cond_0

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :cond_0
    const-string v3, "c"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_1

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :cond_1
    const-string v2, "logger"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    const-string v2, "org.apache.log4j.pattern.ClassNamePatternConverter"

    if-nez v1, :cond_2

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :cond_2
    const-string v3, "C"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_3

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :cond_3
    const-string v2, "class"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    const-string v2, "org.apache.log4j.pattern.DatePatternConverter"

    if-nez v1, :cond_4

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :cond_4
    const-string v3, "d"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_5

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :cond_5
    const-string v2, "date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.FileLocationPatternConverter"

    if-nez v1, :cond_6

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :cond_6
    const-string v5, "F"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_7

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :cond_7
    const-string v4, "file"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "org.apache.log4j.pattern.FullLocationPatternConverter"

    invoke-static {v1}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    :cond_8
    const-string v4, "l"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.LineLocationPatternConverter"

    if-nez v1, :cond_9

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :cond_9
    const-string v5, "L"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_a

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :cond_a
    const-string v4, "line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.MessagePatternConverter"

    if-nez v1, :cond_b

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :cond_b
    const-string v5, "m"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_c

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :cond_c
    const-string v4, "message"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "org.apache.log4j.pattern.LineSeparatorPatternConverter"

    invoke-static {v1}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    :cond_d
    const-string v4, "n"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.MethodLocationPatternConverter"

    if-nez v1, :cond_e

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :cond_e
    const-string v5, "M"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_f

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :cond_f
    const-string v4, "method"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.LevelPatternConverter"

    if-nez v1, :cond_10

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :cond_10
    const-string v5, "p"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_11

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :cond_11
    const-string v4, "level"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.RelativeTimePatternConverter"

    if-nez v1, :cond_12

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :cond_12
    const-string v5, "r"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_13

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :cond_13
    const-string v4, "relative"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.ThreadPatternConverter"

    if-nez v1, :cond_14

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :cond_14
    const-string v5, "t"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_15

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :cond_15
    const-string v4, "thread"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.NDCPatternConverter"

    if-nez v1, :cond_16

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :cond_16
    const-string v5, "x"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_17

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :cond_17
    const-string v4, "ndc"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.PropertiesPatternConverter"

    if-nez v1, :cond_18

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :cond_18
    const-string v5, "X"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_19

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :cond_19
    const-string v4, "properties"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    const-string v4, "org.apache.log4j.pattern.SequenceNumberPatternConverter"

    if-nez v1, :cond_1a

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :cond_1a
    const-string v5, "sn"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_1b

    invoke-static {v4}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :cond_1b
    const-string v4, "sequenceNumber"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_1c

    const-string v1, "org.apache.log4j.pattern.ThrowableInformationPatternConverter"

    invoke-static {v1}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    :cond_1c
    const-string v4, "throwable"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v1, v0}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 139
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_1d

    const-string v1, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v1}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :cond_1d
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_1e

    const-string v1, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v1}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :cond_1e
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_1f

    const-string v1, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v1}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :cond_1f
    const-string v2, "i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v1, :cond_20

    const-string v1, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v1}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :cond_20
    const-string v2, "index"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v1, v0}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private static createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;
    .locals 6

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move-object v3, p0

    move-object v2, v1

    :goto_0
    const/4 v4, 0x0

    if-lez v0, :cond_2

    if-nez v2, :cond_2

    .line 429
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 432
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 436
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 441
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Unrecognized format specifier ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 448
    :cond_3
    instance-of p2, v2, Ljava/lang/Class;

    if-eqz p2, :cond_4

    .line 449
    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    .line 451
    :cond_4
    instance-of p2, v2, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 453
    :try_start_0
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    const-string p2, "newInstance"

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Class;

    const-string v5, "[Ljava.lang.String;"

    .line 470
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v2, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 476
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 477
    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    check-cast p4, [Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p4, p3, v4

    .line 479
    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 482
    instance-of p3, p2, Lorg/apache/log4j/pattern/PatternConverter;

    if-eqz p3, :cond_5

    .line 483
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p4, v0

    sub-int/2addr p3, p4

    invoke-virtual {p1, v4, p3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 488
    check-cast p2, Lorg/apache/log4j/pattern/PatternConverter;

    return-object p2

    .line 490
    :cond_5
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " does not extend PatternConverter."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 495
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Error creating converter for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/log4j/pattern/PatternConverter;

    .line 501
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr p3, v0

    invoke-virtual {p1, v4, p3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    .line 508
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v1

    :catch_2
    move-exception p0

    .line 455
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Class for conversion pattern %"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 462
    :cond_6
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "Bad map entry for conversion pattern %"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    return-object v1
.end method

.method private static extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 194
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 198
    :cond_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p2, p0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static extractOptions(Ljava/lang/String;ILjava/util/List;)I
    .locals 2

    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    const/16 v0, 0x7d

    .line 222
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 228
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I
    .locals 1

    .line 534
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 535
    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/log4j/pattern/PatternParser;->extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result p0

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    invoke-static {p1, p0, v0}, Lorg/apache/log4j/pattern/PatternParser;->extractOptions(Ljava/lang/String;ILjava/util/List;)I

    move-result p0

    .line 542
    invoke-static {p2, p3, p5, p6, v0}, Lorg/apache/log4j/pattern/PatternParser;->createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 549
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p4, "Unrecognized conversion specifier ["

    invoke-direct {p1, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "] starting at position "

    .line 555
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 550
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "Empty conversion specifier starting at position "

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 558
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " in conversion pattern."

    .line 559
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 563
    new-instance p1, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object p1

    invoke-interface {p8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 567
    :cond_2
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {p8, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 571
    new-instance p1, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object p1

    invoke-interface {p8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 577
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    return p0
.end method

.method public static getFileNamePatternRules()Ljava/util/Map;
    .locals 1

    .line 166
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static getPatternLayoutRules()Ljava/util/Map;
    .locals 1

    .line 158
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    if-eqz v9, :cond_12

    .line 251
    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 257
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v0

    const/4 v14, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v0, v13, :cond_10

    add-int/lit8 v2, v0, 0x1

    .line 260
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v1, :cond_b

    const/16 v15, 0x39

    const/16 v8, 0x30

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 381
    :cond_0
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v0, v8, :cond_1

    if-gt v0, v15, :cond_1

    .line 384
    new-instance v3, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v6

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v4, v0

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    goto :goto_2

    :cond_1
    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 389
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 393
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 394
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v0, v8, :cond_3

    if-gt v0, v15, :cond_3

    .line 343
    new-instance v3, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v6, v0

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v0

    invoke-direct {v3, v5, v6, v0}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    :goto_2
    move v0, v2

    move-object v4, v3

    goto :goto_1

    :cond_3
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 351
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 355
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 356
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 362
    :cond_5
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v0, v8, :cond_6

    if-gt v0, v15, :cond_6

    .line 365
    new-instance v1, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v4

    add-int/lit8 v0, v0, -0x30

    invoke-direct {v1, v5, v4, v0}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    move-object v4, v1

    move v0, v2

    const/4 v1, 0x5

    goto/16 :goto_1

    .line 371
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error occured in position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "\"."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    .line 301
    :cond_7
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_a

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_9

    if-lt v0, v8, :cond_8

    if-gt v0, v15, :cond_8

    .line 320
    new-instance v1, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v3

    add-int/lit8 v0, v0, -0x30

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v4

    invoke-direct {v1, v3, v0, v4}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    move-object v4, v1

    move v0, v2

    const/4 v1, 0x4

    goto/16 :goto_1

    :cond_8
    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 326
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 332
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 333
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    :cond_9
    :goto_3
    move v0, v2

    const/4 v1, 0x3

    goto/16 :goto_1

    .line 305
    :cond_a
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v3

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v4

    invoke-direct {v0, v7, v3, v4}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    move-object v4, v0

    goto :goto_4

    :cond_b
    if-ne v2, v13, :cond_c

    .line 267
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    move v0, v2

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0x25

    if-ne v0, v3, :cond_f

    .line 274
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_e

    .line 283
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_d

    .line 284
    new-instance v1, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_d
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 290
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 292
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    move v0, v2

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 276
    :cond_e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 295
    :cond_f
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 402
    :cond_10
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 403
    new-instance v0, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void

    .line 248
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
