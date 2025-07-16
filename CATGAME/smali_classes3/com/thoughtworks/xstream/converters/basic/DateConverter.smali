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
    .locals 5

    const-string v0, "UTC"

    .line 58
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat()Z

    move-result v2

    const-string v3, "yyyy-MM-dd HH:mm:ss.S z"

    if-eqz v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    const-string v4, "yyyy-MM-dd HH:mm:ss.S \'UTC\'"

    .line 64
    :goto_0
    sput-object v4, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v4, "yyyy-MM-dd G HH:mm:ss.S z"

    goto :goto_1

    :cond_1
    const-string v4, "yyyy-MM-dd G HH:mm:ss.S \'UTC\'"

    .line 65
    :goto_1
    sput-object v4, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ERA_PATTERN:Ljava/lang/String;

    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_2

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "yyyy-MM-dd HH:mm:ss.S a"

    .line 70
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "yyyy-MM-dd HH:mm:ssz"

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "yyyy-MM-dd HH:mm:ss z"

    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    const-string v2, "yyyy-MM-dd HH:mm:ss \'UTC\'"

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseISO8601TimeZoneInDateFormat()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SX"

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssX"

    .line 79
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "yyyy-MM-dd\'T\'HH:mmX"

    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "yyyy-MM-dd HH:mm:ssa"

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v1, v2, v0, v2}, Ljava/util/Calendar;->set(III)V

    .line 90
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->ERA_START:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;Z)V
    .locals 8

    .line 185
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    if-eqz p1, :cond_0

    .line 187
    new-instance v7, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const/4 v4, 0x4

    const/16 v5, 0x14

    move-object v0, v7

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    iput-object v7, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    .line 192
    :goto_0
    new-instance p1, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const/4 v4, 0x4

    const/16 v5, 0x14

    move-object v0, p1

    move-object v1, p2

    move-object v2, p5

    move-object v3, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 194
    array-length p2, p3

    new-array p2, p2, [Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    goto :goto_1

    :cond_1
    new-array p2, p1, [Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    :goto_1
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    .line 197
    :goto_2
    iget-object p2, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 198
    new-instance v0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    aget-object v2, p3, p1

    const/4 v5, 0x1

    const/16 v6, 0x14

    move-object v1, v0

    move-object v3, p5

    move-object v4, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 7

    .line 168
    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ERA_PATTERN:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    .line 154
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    .line 111
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 121
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 204
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


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default date pattern"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    const-string v1, "Default era date pattern"

    .line 247
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 249
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

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 204
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->class$java$util$Date:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->class$java$util$Date:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 215
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eq v0, v1, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 224
    :try_start_2
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot parse date"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v1, "date"

    .line 231
    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    throw v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 236
    check-cast p1, Ljava/util/Date;

    .line 237
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->ERA_START:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
