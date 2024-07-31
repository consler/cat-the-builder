.class public Lcom/thoughtworks/xstream/converters/basic/DateConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "DateConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ErrorReporter;


# static fields
.field private static final DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

.field private static final DEFAULT_ERA_PATTERN:Ljava/lang/String;

.field private static final DEFAULT_PATTERN:Ljava/lang/String;

.field private static final ERA_START:J

.field private static final UTC:Ljava/util/TimeZone;

.field static synthetic class$java$util$Date:Ljava/lang/Class;


# instance fields
.field private final acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

.field private final defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

.field private final defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 58
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    .line 60
    const-string v0, "yyyy-MM-dd HH:mm:ss.S z"

    .line 61
    .local v0, "defaultPattern":Ljava/lang/String;
    const-string v1, "yyyy-MM-dd G HH:mm:ss.S z"

    .line 62
    .local v1, "defaultEraPattern":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "acceptablePatterns":Ljava/util/List;
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat()Z

    move-result v3

    .line 64
    .local v3, "utcSupported":Z
    const-string v4, "yyyy-MM-dd HH:mm:ss.S z"

    if-eqz v3, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    const-string v5, "yyyy-MM-dd HH:mm:ss.S \'UTC\'"

    :goto_0
    sput-object v5, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    .line 65
    if-eqz v3, :cond_1

    const-string v5, "yyyy-MM-dd G HH:mm:ss.S z"

    goto :goto_1

    :cond_1
    const-string v5, "yyyy-MM-dd G HH:mm:ss.S \'UTC\'"

    :goto_1
    sput-object v5, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ERA_PATTERN:Ljava/lang/String;

    .line 66
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    if-nez v3, :cond_2

    .line 68
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    const-string v4, "yyyy-MM-dd HH:mm:ss.S a"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v4, "yyyy-MM-dd HH:mm:ssz"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v4, "yyyy-MM-dd HH:mm:ss z"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    if-nez v3, :cond_3

    .line 75
    const-string v4, "yyyy-MM-dd HH:mm:ss \'UTC\'"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseISO8601TimeZoneInDateFormat()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SX"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssX"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v4, "yyyy-MM-dd\'T\'HH:mmX"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_4
    const-string v4, "yyyy-MM-dd HH:mm:ssa"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    sput-object v4, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 87
    .local v4, "cal":Ljava/util/Calendar;
    sget-object v5, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 89
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 90
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sput-wide v5, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->ERA_START:J

    .line 91
    .end local v0    # "defaultPattern":Ljava/lang/String;
    .end local v1    # "defaultEraPattern":Ljava/lang/String;
    .end local v2    # "acceptablePatterns":Ljava/util/List;
    .end local v3    # "utcSupported":Z
    .end local v4    # "cal":Ljava/util/Calendar;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;Z)V
    .locals 12
    .param p1, "defaultEraFormat"    # Ljava/lang/String;
    .param p2, "defaultFormat"    # Ljava/lang/String;
    .param p3, "acceptableFormats"    # [Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;
    .param p5, "timeZone"    # Ljava/util/TimeZone;
    .param p6, "lenient"    # Z

    .line 185
    move-object v0, p0

    move-object v1, p3

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    new-instance v9, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const/4 v6, 0x4

    const/16 v7, 0x14

    move-object v2, v9

    move-object v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    iput-object v9, v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    goto :goto_0

    .line 190
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    .line 192
    :goto_0
    new-instance v2, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const/4 v7, 0x4

    const/16 v8, 0x14

    move-object v3, v2

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    iput-object v2, v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    .line 194
    if-eqz v1, :cond_1

    array-length v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-array v2, v2, [Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    iput-object v2, v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    .line 197
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 198
    new-instance v4, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    aget-object v6, v1, v2

    const/4 v9, 0x1

    const/16 v10, 0x14

    move-object v5, v4

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    aput-object v4, v3, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 201
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultFormat"    # Ljava/lang/String;
    .param p2, "acceptableFormats"    # [Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "defaultFormat"    # Ljava/lang/String;
    .param p2, "acceptableFormats"    # [Ljava/lang/String;
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 7
    .param p1, "defaultFormat"    # Ljava/lang/String;
    .param p2, "acceptableFormats"    # [Ljava/lang/String;
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "lenient"    # Z

    .line 168
    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ERA_PATTERN:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;Z)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "defaultFormat"    # Ljava/lang/String;
    .param p2, "acceptableFormats"    # [Ljava/lang/String;
    .param p3, "lenient"    # Z

    .line 154
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 111
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "lenient"    # Z

    .line 121
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 122
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 204
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 3
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .line 245
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default date pattern"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default era date pattern"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 250
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Alternative date pattern"

    invoke-interface {p1, v2, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 204
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->class$java$util$Date:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->class$java$util$Date:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eq v0, v1, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 218
    :catch_1
    move-exception v0

    .line 222
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 224
    :try_start_2
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 225
    :catch_2
    move-exception v1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot parse date"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    throw v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 236
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    .line 237
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-wide v3, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->ERA_START:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
