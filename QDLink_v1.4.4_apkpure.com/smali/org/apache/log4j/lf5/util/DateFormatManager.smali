.class public Lorg/apache/log4j/lf5/util/DateFormatManager;
.super Ljava/lang/Object;
.source "DateFormatManager.java"


# instance fields
.field private _dateFormat:Ljava/text/DateFormat;

.field private _locale:Ljava/util/Locale;

.field private _pattern:Ljava/lang/String;

.field private _timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 61
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 81
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 74
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 75
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 104
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 105
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 67
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 68
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 96
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 97
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 88
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 89
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 90
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 51
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 53
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 112
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 113
    iput-object p2, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 114
    iput-object p3, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V

    return-void
.end method

.method private declared-synchronized configure()V
    .locals 2

    monitor-enter p0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    .line 232
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 234
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 194
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 196
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getDateFormatInstance()Ljava/text/DateFormat;
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocale()Ljava/util/Locale;
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputFormat()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPattern()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeZone()Ljava/util/TimeZone;
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->getDateFormatInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 214
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 216
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setDateFormatInstance(Ljava/text/DateFormat;)V
    .locals 0

    monitor-enter p0

    .line 183
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_dateFormat:Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLocale(Ljava/util/Locale;)V
    .locals 0

    monitor-enter p0

    .line 144
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_locale:Ljava/util/Locale;

    .line 145
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOutputFormat(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 174
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPattern(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 156
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_pattern:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    monitor-enter p0

    .line 131
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/DateFormatManager;->_timeZone:Ljava/util/TimeZone;

    .line 132
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/DateFormatManager;->configure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
