.class public Lcom/thoughtworks/xstream/core/util/ISO8601JodaTimeConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "ISO8601JodaTimeConverter.java"


# static fields
.field private static final formattersNoUTC:[Lorg/joda/time/format/DateTimeFormatter;

.field private static final formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/16 v0, 0x14

    new-array v1, v0, [Lorg/joda/time/format/DateTimeFormatter;

    .line 41
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 42
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 43
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 44
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 45
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 46
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 47
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 48
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 49
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 50
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicTTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 51
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 52
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 53
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v15, 0xc

    aput-object v2, v1, v15

    .line 54
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v16, 0xd

    aput-object v2, v1, v16

    .line 55
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->time()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v17, 0xe

    aput-object v2, v1, v17

    .line 56
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v18, 0xf

    aput-object v2, v1, v18

    .line 57
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v19, 0x10

    aput-object v2, v1, v19

    .line 58
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v20, 0x11

    aput-object v2, v1, v20

    .line 59
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v21, 0x12

    aput-object v2, v1, v21

    .line 60
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/16 v22, 0x13

    aput-object v2, v1, v22

    sput-object v1, Lcom/thoughtworks/xstream/core/util/ISO8601JodaTimeConverter;->formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;

    const/16 v1, 0x16

    new-array v1, v1, [Lorg/joda/time/format/DateTimeFormatter;

    .line 63
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v3

    .line 64
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicOrdinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v4

    .line 65
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->basicWeekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v5

    .line 66
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v6

    .line 67
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHour()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v7

    .line 68
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinute()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v8

    .line 69
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v9

    .line 70
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v10

    .line 71
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v11

    .line 72
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hour()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v12

    .line 73
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinute()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v13

    .line 74
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v14

    .line 75
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v15

    .line 76
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->hourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v16

    .line 77
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->ordinalDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v17

    .line 78
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekDate()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v18

    .line 79
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->year()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v19

    .line 80
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonth()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v20

    .line 81
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonthDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v21

    .line 82
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyear()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v22

    .line 83
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearWeek()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x15

    .line 84
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->weekyearWeekDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lcom/thoughtworks/xstream/core/util/ISO8601JodaTimeConverter;->formattersNoUTC:[Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_0
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JodaTimeConverter;->formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 93
    aget-object v2, v2, v1

    .line 95
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lorg/joda/time/DateTime;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 97
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 104
    :goto_1
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JodaTimeConverter;->formattersNoUTC:[Lorg/joda/time/format/DateTimeFormatter;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 105
    aget-object v2, v2, v0

    .line 107
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    .line 108
    invoke-virtual {v2, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lorg/joda/time/DateTime;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 110
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot parse date"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v1, "date"

    .line 117
    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    throw v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 123
    sget-object p1, Lcom/thoughtworks/xstream/core/util/ISO8601JodaTimeConverter;->formattersUTC:[Lorg/joda/time/format/DateTimeFormatter;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTime;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
