.class public Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;
.super Ljava/lang/Object;
.source "ThreadSafeSimpleDateFormat.java"


# instance fields
.field private final formatString:Ljava/lang/String;

.field private final pool:Lcom/thoughtworks/xstream/core/util/Pool;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;IIZ)V
    .locals 7

    .line 45
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->formatString:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->timeZone:Ljava/util/TimeZone;

    .line 53
    new-instance p1, Lcom/thoughtworks/xstream/core/util/Pool;

    new-instance p2, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;

    invoke-direct {p2, p0, p3, p6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;-><init>(Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;Ljava/util/Locale;Z)V

    invoke-direct {p1, p4, p5, p2}, Lcom/thoughtworks/xstream/core/util/Pool;-><init>(IILcom/thoughtworks/xstream/core/util/Pool$Factory;)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->formatString:Ljava/lang/String;

    return-object p0
.end method

.method private fetchFromPool()Ljava/text/DateFormat;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/Pool;->fetchFromPool()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 83
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 84
    :goto_0
    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->fetchFromPool()Ljava/text/DateFormat;

    move-result-object v0

    .line 66
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 69
    throw p1
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->fetchFromPool()Ljava/text/DateFormat;

    move-result-object v0

    .line 75
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    .line 78
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->formatString:Ljava/lang/String;

    return-object v0
.end method
