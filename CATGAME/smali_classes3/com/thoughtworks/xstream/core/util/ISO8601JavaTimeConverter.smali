.class public Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "ISO8601JavaTimeConverter.java"


# static fields
.field private static final BASIC_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final BASIC_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

.field private static final BASIC_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final BASIC_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final BASIC_TTIME:Ljava/time/format/DateTimeFormatter;

.field private static final BASIC_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

.field private static final BASIC_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final ISO_TTIME:Ljava/time/format/DateTimeFormatter;

.field private static final ISO_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final STD_DATE_HOUR:Ljava/time/format/DateTimeFormatter;

.field private static final STD_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final STD_HOUR:Ljava/time/format/DateTimeFormatter;

.field private static final STD_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final STD_YEAR_WEEK:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 52
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 53
    const/4 v2, 0x3

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 56
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 57
    const-string v1, "yyyy-DDD\'T\'HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 61
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 62
    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 63
    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 66
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 67
    const-string v1, "yyyyDDD\'T\'HHmmss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 68
    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 71
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 72
    const-string v1, "HHmmss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 73
    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_TIME:Ljava/time/format/DateTimeFormatter;

    .line 76
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 77
    const-string v1, "\'T\'HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 78
    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->ISO_TTIME:Ljava/time/format/DateTimeFormatter;

    .line 81
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 82
    const-string v1, "\'T\'HHmmss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 83
    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_TTIME:Ljava/time/format/DateTimeFormatter;

    .line 86
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 87
    const-string v1, "YYYY-\'W\'ww-e\'T\'HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 88
    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->ISO_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 91
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 92
    const-string v1, "YYYY\'W\'wwe\'T\'HHmmss"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 93
    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 96
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 97
    const-string v1, "yyyyDDD"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 99
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 100
    const-string v1, "YYYY\'W\'wwe"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    .line 102
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 103
    const-string v1, "yyyy-MM-dd\'T\'HH"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_DATE_HOUR:Ljava/time/format/DateTimeFormatter;

    .line 105
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "HH"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_HOUR:Ljava/time/format/DateTimeFormatter;

    .line 106
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 107
    const-string v1, "YYYY-\'W\'ww"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    .line 108
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_YEAR_WEEK:Ljava/time/format/DateTimeFormatter;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 120
    .local v0, "odt":Ljava/time/OffsetDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v1
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 121
    .end local v0    # "odt":Ljava/time/OffsetDateTime;
    :catch_0
    move-exception v0

    .line 125
    :try_start_1
    invoke-static {p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 126
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v1
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 127
    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    :catch_1
    move-exception v0

    .line 131
    :try_start_2
    invoke-static {p1}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0

    .line 132
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v1
    :try_end_2
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 133
    .end local v0    # "instant":Ljava/time/Instant;
    :catch_2
    move-exception v0

    .line 137
    :try_start_3
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    sget-object v1, Lcom/thoughtworks/xstream/core/util/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    .line 138
    .local v0, "odt":Ljava/time/OffsetDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v1
    :try_end_3
    .catch Ljava/time/format/DateTimeParseException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v1

    .line 139
    .end local v0    # "odt":Ljava/time/OffsetDateTime;
    :catch_3
    move-exception v0

    .line 143
    :try_start_4
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    sget-object v1, Lcom/thoughtworks/xstream/core/util/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    .line 144
    .restart local v0    # "odt":Ljava/time/OffsetDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v1
    :try_end_4
    .catch Ljava/time/format/DateTimeParseException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v1

    .line 145
    .end local v0    # "odt":Ljava/time/OffsetDateTime;
    :catch_4
    move-exception v0

    .line 149
    :try_start_5
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    sget-object v1, Lcom/thoughtworks/xstream/core/util/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    .line 150
    .restart local v0    # "odt":Ljava/time/OffsetDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v1
    :try_end_5
    .catch Ljava/time/format/DateTimeParseException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v1

    .line 151
    .end local v0    # "odt":Ljava/time/OffsetDateTime;
    :catch_5
    move-exception v0

    .line 155
    const-wide/16 v0, 0x0

    :try_start_6
    invoke-static {p1}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v2

    .line 156
    .local v2, "ot":Ljava/time/OffsetTime;
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_6
    .catch Ljava/time/format/DateTimeParseException; {:try_start_6 .. :try_end_6} :catch_6

    return-object v0

    .line 157
    .end local v2    # "ot":Ljava/time/OffsetTime;
    :catch_6
    move-exception v2

    .line 161
    :try_start_7
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_TIME:Ljava/time/format/DateTimeFormatter;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    .line 162
    .restart local v2    # "ot":Ljava/time/OffsetTime;
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_7
    .catch Ljava/time/format/DateTimeParseException; {:try_start_7 .. :try_end_7} :catch_7

    return-object v0

    .line 163
    .end local v2    # "ot":Ljava/time/OffsetTime;
    :catch_7
    move-exception v2

    .line 167
    :try_start_8
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->ISO_TTIME:Ljava/time/format/DateTimeFormatter;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    .line 168
    .restart local v2    # "ot":Ljava/time/OffsetTime;
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_8
    .catch Ljava/time/format/DateTimeParseException; {:try_start_8 .. :try_end_8} :catch_8

    return-object v0

    .line 169
    .end local v2    # "ot":Ljava/time/OffsetTime;
    :catch_8
    move-exception v2

    .line 173
    :try_start_9
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_TTIME:Ljava/time/format/DateTimeFormatter;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    .line 174
    .restart local v2    # "ot":Ljava/time/OffsetTime;
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_9
    .catch Ljava/time/format/DateTimeParseException; {:try_start_9 .. :try_end_9} :catch_9

    return-object v0

    .line 175
    .end local v2    # "ot":Ljava/time/OffsetTime;
    :catch_9
    move-exception v2

    .line 179
    :try_start_a
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->ISO_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 180
    .local v2, "ta":Ljava/time/temporal/TemporalAccessor;
    invoke-static {v2}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v3

    .line 181
    .local v3, "y":Ljava/time/Year;
    invoke-static {v2}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object v4

    .line 182
    .local v4, "md":Ljava/time/MonthDay;
    invoke-static {v2}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v5

    .line 183
    .local v5, "ot":Ljava/time/OffsetTime;
    invoke-virtual {v3, v4}, Ljava/time/Year;->atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v6

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-static {v6}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_a .. :try_end_a} :catch_a

    return-object v0

    .line 184
    .end local v2    # "ta":Ljava/time/temporal/TemporalAccessor;
    .end local v3    # "y":Ljava/time/Year;
    .end local v4    # "md":Ljava/time/MonthDay;
    .end local v5    # "ot":Ljava/time/OffsetTime;
    :catch_a
    move-exception v2

    .line 188
    :try_start_b
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 189
    .restart local v2    # "ta":Ljava/time/temporal/TemporalAccessor;
    invoke-static {v2}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v3

    .line 190
    .restart local v3    # "y":Ljava/time/Year;
    invoke-static {v2}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object v4

    .line 191
    .restart local v4    # "md":Ljava/time/MonthDay;
    invoke-static {v2}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v5

    .line 192
    .restart local v5    # "ot":Ljava/time/OffsetTime;
    invoke-virtual {v3, v4}, Ljava/time/Year;->atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v6

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-static {v6}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_b
    .catch Ljava/time/format/DateTimeParseException; {:try_start_b .. :try_end_b} :catch_b

    return-object v0

    .line 193
    .end local v2    # "ta":Ljava/time/temporal/TemporalAccessor;
    .end local v3    # "y":Ljava/time/Year;
    .end local v4    # "md":Ljava/time/MonthDay;
    .end local v5    # "ot":Ljava/time/OffsetTime;
    :catch_b
    move-exception v2

    .line 197
    :try_start_c
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v2

    .line 198
    .local v2, "ld":Ljava/time/LocalDate;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_c
    .catch Ljava/time/format/DateTimeParseException; {:try_start_c .. :try_end_c} :catch_c

    return-object v0

    .line 199
    .end local v2    # "ld":Ljava/time/LocalDate;
    :catch_c
    move-exception v2

    .line 203
    :try_start_d
    sget-object v2, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 204
    .restart local v2    # "ld":Ljava/time/LocalDate;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_d
    .catch Ljava/time/format/DateTimeParseException; {:try_start_d .. :try_end_d} :catch_d

    return-object v0

    .line 205
    .end local v2    # "ld":Ljava/time/LocalDate;
    :catch_d
    move-exception v2

    .line 209
    :try_start_e
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 210
    .restart local v2    # "ld":Ljava/time/LocalDate;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_e .. :try_end_e} :catch_e

    return-object v0

    .line 211
    .end local v2    # "ld":Ljava/time/LocalDate;
    :catch_e
    move-exception v2

    .line 215
    :try_start_f
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDate;

    .line 216
    .restart local v2    # "ld":Ljava/time/LocalDate;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_f
    .catch Ljava/time/format/DateTimeParseException; {:try_start_f .. :try_end_f} :catch_f

    return-object v0

    .line 217
    .end local v2    # "ld":Ljava/time/LocalDate;
    :catch_f
    move-exception v2

    .line 221
    :try_start_10
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 222
    .restart local v2    # "ld":Ljava/time/LocalDate;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_10
    .catch Ljava/time/format/DateTimeParseException; {:try_start_10 .. :try_end_10} :catch_10

    return-object v0

    .line 223
    .end local v2    # "ld":Ljava/time/LocalDate;
    :catch_10
    move-exception v2

    .line 227
    :try_start_11
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 228
    .local v2, "ta":Ljava/time/temporal/TemporalAccessor;
    invoke-static {v2}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v3

    .line 229
    .restart local v3    # "y":Ljava/time/Year;
    invoke-static {v2}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object v4

    .line 230
    .restart local v4    # "md":Ljava/time/MonthDay;
    invoke-virtual {v3, v4}, Ljava/time/Year;->atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;

    move-result-object v5

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_11
    .catch Ljava/time/format/DateTimeParseException; {:try_start_11 .. :try_end_11} :catch_11

    return-object v0

    .line 231
    .end local v2    # "ta":Ljava/time/temporal/TemporalAccessor;
    .end local v3    # "y":Ljava/time/Year;
    .end local v4    # "md":Ljava/time/MonthDay;
    :catch_11
    move-exception v2

    .line 235
    :try_start_12
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_DATE_HOUR:Ljava/time/format/DateTimeFormatter;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/-$$Lambda$JBWLm7jbzHiLhHxYdB_IuO_vFO8;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$JBWLm7jbzHiLhHxYdB_IuO_vFO8;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    .line 236
    .local v2, "ldt":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_12
    .catch Ljava/time/format/DateTimeParseException; {:try_start_12 .. :try_end_12} :catch_12

    return-object v0

    .line 237
    .end local v2    # "ldt":Ljava/time/LocalDateTime;
    :catch_12
    move-exception v2

    .line 241
    :try_start_13
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_HOUR:Ljava/time/format/DateTimeFormatter;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    .line 242
    .local v2, "lt":Ljava/time/LocalTime;
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_13
    .catch Ljava/time/format/DateTimeParseException; {:try_start_13 .. :try_end_13} :catch_13

    return-object v0

    .line 243
    .end local v2    # "lt":Ljava/time/LocalTime;
    :catch_13
    move-exception v2

    .line 247
    :try_start_14
    invoke-static {p1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v2

    .line 248
    .restart local v2    # "lt":Ljava/time/LocalTime;
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_14
    .catch Ljava/time/format/DateTimeParseException; {:try_start_14 .. :try_end_14} :catch_14

    return-object v0

    .line 249
    .end local v2    # "lt":Ljava/time/LocalTime;
    :catch_14
    move-exception v0

    .line 253
    const/4 v0, 0x1

    :try_start_15
    invoke-static {p1}, Ljava/time/YearMonth;->parse(Ljava/lang/CharSequence;)Ljava/time/YearMonth;

    move-result-object v1

    .line 254
    .local v1, "ym":Ljava/time/YearMonth;
    invoke-virtual {v1, v0}, Ljava/time/YearMonth;->atDay(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_15
    .catch Ljava/time/format/DateTimeParseException; {:try_start_15 .. :try_end_15} :catch_15

    return-object v0

    .line 255
    .end local v1    # "ym":Ljava/time/YearMonth;
    :catch_15
    move-exception v1

    .line 259
    :try_start_16
    invoke-static {p1}, Ljava/time/Year;->parse(Ljava/lang/CharSequence;)Ljava/time/Year;

    move-result-object v1

    .line 260
    .local v1, "y":Ljava/time/Year;
    invoke-virtual {v1, v0}, Ljava/time/Year;->atDay(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0
    :try_end_16
    .catch Ljava/time/format/DateTimeParseException; {:try_start_16 .. :try_end_16} :catch_16

    return-object v0

    .line 261
    .end local v1    # "y":Ljava/time/Year;
    :catch_16
    move-exception v0

    .line 265
    :try_start_17
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_YEAR_WEEK:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    .line 266
    .local v0, "ta":Ljava/time/temporal/TemporalAccessor;
    sget-object v1, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 267
    .local v1, "y":I
    sget-object v2, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 268
    .local v2, "w":I
    nop

    .line 269
    invoke-static {v0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    .line 270
    invoke-virtual {v4}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    .line 271
    invoke-virtual {v4}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 272
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 268
    invoke-static {v3}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v3
    :try_end_17
    .catch Ljava/time/format/DateTimeParseException; {:try_start_17 .. :try_end_17} :catch_17

    return-object v3

    .line 274
    .end local v0    # "ta":Ljava/time/temporal/TemporalAccessor;
    .end local v1    # "y":I
    .end local v2    # "w":I
    :catch_17
    move-exception v0

    .line 277
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot parse date"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    throw v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 284
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    .line 285
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 286
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 287
    .local v2, "offsetInMillis":I
    div-int/lit16 v3, v2, 0x3e8

    invoke-static {v3}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v3

    .line 289
    .local v3, "offsetDateTime":Ljava/time/OffsetDateTime;
    sget-object v4, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
