.class public abstract Lorg/apache/commons/beanutils/converters/DateTimeConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "DateTimeConverter.java"


# instance fields
.field private displayPatterns:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private patterns:[Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;

.field private useLocaleFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 108
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 504
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "format":Ljava/text/DateFormat;
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 508
    :cond_0
    return-object v0
.end method

.method private logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/DateFormat;

    .line 609
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, " with Format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    instance-of v1, p2, Ljava/text/SimpleDateFormat;

    const-string v2, "]"

    if-eqz v1, :cond_0

    .line 615
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    move-object v1, p2

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_0
    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 621
    const-string v1, "default locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 623
    :cond_1
    const-string v1, "locale["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_2

    .line 628
    const-string v1, ", TimeZone["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 634
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method private parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 6
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 522
    .local p1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 523
    .local v0, "firstEx":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 525
    .local v4, "pattern":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v5

    .line 526
    .local v5, "format":Ljava/text/DateFormat;
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .local v1, "calendar":Ljava/util/Calendar;
    return-object v1

    .line 528
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v5    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v5

    .line 529
    .local v5, "ex":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 530
    move-object v0, v5

    .line 523
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 535
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error converting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' using  patterns \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_2
    throw v0
.end method

.method private parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;
    .locals 6
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "format"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .line 555
    .local p1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Parsing"

    invoke-direct {p0, v0, p4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 556
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 557
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v0, v1

    .line 558
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p4, p3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 559
    .local v1, "parsedDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p4}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 570
    .local v2, "calendar":Ljava/util/Calendar;
    return-object v2

    .line 560
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error converting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "msg":Ljava/lang/String;
    instance-of v4, p4, Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_2

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " using pattern \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p4

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 565
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 567
    :cond_3
    new-instance v3, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {v3, v2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private toDate(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 373
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    const-class v0, Ljava/sql/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p2, p3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 383
    :cond_1
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p2, p3}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 388
    :cond_2
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 393
    :cond_3
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_4

    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez v1, :cond_5

    .line 398
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-nez v2, :cond_6

    .line 400
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_6
    invoke-static {v2, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 404
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 409
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot handle conversion to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 412
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 414
    :cond_8
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {v1, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toDate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 438
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/sql/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    invoke-static {p2}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    const-string v2, "String must be in JDBC format [yyyy-MM-dd] to create a java.sql.Date"

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :try_start_1
    invoke-static {p2}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 451
    :catch_1
    move-exception v0

    .line 452
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    const-string v2, "String must be in JDBC format [HH:mm:ss] to create a java.sql.Time"

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    :try_start_2
    invoke-static {p2}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 461
    :catch_2
    move-exception v0

    .line 462
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    const-string v2, "String must be in JDBC format [yyyy-MM-dd HH:mm:ss.fffffffff] to create a java.sql.Timestamp"

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not support default String to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' conversion."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "    (N.B. Re-configure Converter or use alternative implementation)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 474
    :cond_3
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {v1, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "date":Ljava/util/Date;
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 228
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    .line 229
    :cond_0
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 230
    move-object v1, p1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 232
    new-instance v1, Ljava/util/Date;

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    .line 235
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 236
    .local v1, "result":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    const-string v3, "\'"

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, "format":Ljava/text/DateFormat;
    iget-object v4, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    if-eqz v4, :cond_3

    array-length v5, v4

    if-lez v5, :cond_3

    .line 239
    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_1

    .line 241
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v2

    .line 243
    :goto_1
    const-string v4, "Formatting"

    invoke-direct {p0, v4, v2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 244
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Converted  to String using format \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 248
    .end local v2    # "format":Ljava/text/DateFormat;
    :cond_4
    goto :goto_2

    .line 249
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Converted  to String using toString() \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 254
    :cond_6
    :goto_2
    return-object v1
.end method

.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 293
    .local v0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v1, p2, Ljava/sql/Timestamp;

    if-eqz v1, :cond_0

    .line 299
    move-object v1, p2

    check-cast v1, Ljava/sql/Timestamp;

    .line 300
    .local v1, "timestamp":Ljava/sql/Timestamp;
    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    .line 301
    .local v2, "timeInMillis":J
    invoke-virtual {v1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v4

    const v5, 0xf4240

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 303
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 307
    .end local v1    # "timestamp":Ljava/sql/Timestamp;
    .end local v2    # "timeInMillis":J
    :cond_0
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 308
    move-object v1, p2

    check-cast v1, Ljava/util/Date;

    .line 309
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 313
    .end local v1    # "date":Ljava/util/Date;
    :cond_1
    instance-of v1, p2, Ljava/util/Calendar;

    if-eqz v1, :cond_2

    .line 314
    move-object v1, p2

    check-cast v1, Ljava/util/Calendar;

    .line 315
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 319
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_2
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 320
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    .line 321
    .local v1, "longObj":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 325
    .end local v1    # "longObj":Ljava/lang/Long;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "stringValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->handleMissing(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 331
    :cond_4
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    if-eqz v2, :cond_7

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "calendar":Ljava/util/Calendar;
    iget-object v3, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    if-eqz v3, :cond_5

    array-length v3, v3

    if-lez v3, :cond_5

    .line 334
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    goto :goto_0

    .line 336
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v3

    .line 337
    .local v3, "format":Ljava/text/DateFormat;
    invoke-direct {p0, v0, p1, v1, v3}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v2

    .line 339
    .end local v3    # "format":Ljava/text/DateFormat;
    :goto_0
    const-class v3, Ljava/util/Calendar;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 340
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 342
    :cond_6
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 347
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_7
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "format":Ljava/text/DateFormat;
    const/4 v1, 0x3

    if-nez p1, :cond_0

    .line 487
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {v1, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 491
    :goto_0
    if-eqz p2, :cond_1

    .line 492
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 494
    :cond_1
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPatterns()[Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 159
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setUseLocaleFormat(Z)V

    .line 161
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setPatterns([Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setPatterns([Ljava/lang/String;)V
    .locals 4
    .param p1, "patterns"    # [Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    .line 195
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-le v1, v0, :cond_2

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 198
    if-lez v2, :cond_0

    .line 199
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    .line 205
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setUseLocaleFormat(Z)V

    .line 206
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 140
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    .line 141
    return-void
.end method

.method public setUseLocaleFormat(Z)V
    .locals 0
    .param p1, "useLocaleFormat"    # Z

    .line 121
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, "[UseDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->isUseDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, ", UseLocaleFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 586
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 587
    const-string v1, ", Patterns={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    .line 592
    const-string v1, ", Locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_2

    .line 596
    const-string v1, ", TimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
