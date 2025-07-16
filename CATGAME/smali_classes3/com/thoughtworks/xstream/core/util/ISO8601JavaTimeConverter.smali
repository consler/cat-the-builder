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
.method public static synthetic $r8$lambda$M-OcHB0MZSmB-SYRazGLxcI3VI4(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .locals 0

    invoke-static {p0}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VPr89HQOq67u9uM-TeQCxfrmwTA(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/OffsetDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kVIaOmyInOTncW9SayoZhKTsmhg(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oFRjpPH-rmRBGQp9DzKnle_YSuM(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uxtpNi8tsEhCslD2YJOgRNDhZB8(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 52
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x3

    const/16 v3, 0x9

    const/4 v4, 0x1

    .line 53
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

    const-string v1, "yyyy-DDD\'T\'HH:mm:ss"

    .line 57
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x0

    .line 58
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

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    .line 62
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

    const-string v1, "yyyyDDD\'T\'HHmmss"

    .line 67
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

    const-string v1, "HHmmss"

    .line 72
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

    const-string v1, "\'T\'HH:mm:ss"

    .line 77
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

    const-string v1, "\'T\'HHmmss"

    .line 82
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

    const-string v1, "YYYY-\'W\'ww-e\'T\'HH:mm:ss"

    .line 87
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

    const-string v1, "YYYY\'W\'wwe\'T\'HHmmss"

    .line 92
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

    const-string v1, "yyyyDDD"

    .line 97
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 99
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "YYYY\'W\'wwe"

    .line 100
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    .line 102
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH"

    .line 103
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

    const-string v1, "YYYY-\'W\'ww"

    .line 107
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v2, 0x1

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_YEAR_WEEK:Ljava/time/format/DateTimeFormatter;

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 120
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 125
    :catch_0
    :try_start_1
    invoke-static {p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 126
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 131
    :catch_1
    :try_start_2
    invoke-static {p1}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0

    .line 132
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_2
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 137
    :catch_2
    :try_start_3
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    .line 138
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_3
    .catch Ljava/time/format/DateTimeParseException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    .line 143
    :catch_3
    :try_start_4
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    .line 144
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_4
    .catch Ljava/time/format/DateTimeParseException; {:try_start_4 .. :try_end_4} :catch_4

    return-object p1

    .line 149
    :catch_4
    :try_start_5
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_ORDINAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    .line 150
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_5
    .catch Ljava/time/format/DateTimeParseException; {:try_start_5 .. :try_end_5} :catch_5

    return-object p1

    :catch_5
    const-wide/16 v0, 0x0

    .line 155
    :try_start_6
    invoke-static {p1}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v2

    .line 156
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_6
    .catch Ljava/time/format/DateTimeParseException; {:try_start_6 .. :try_end_6} :catch_6

    return-object p1

    .line 161
    :catch_6
    :try_start_7
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v3, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    .line 162
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_7
    .catch Ljava/time/format/DateTimeParseException; {:try_start_7 .. :try_end_7} :catch_7

    return-object p1

    .line 167
    :catch_7
    :try_start_8
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->ISO_TTIME:Ljava/time/format/DateTimeFormatter;

    new-instance v3, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    .line 168
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_8
    .catch Ljava/time/format/DateTimeParseException; {:try_start_8 .. :try_end_8} :catch_8

    return-object p1

    .line 173
    :catch_8
    :try_start_9
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_TTIME:Ljava/time/format/DateTimeFormatter;

    new-instance v3, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    .line 174
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_9
    .catch Ljava/time/format/DateTimeParseException; {:try_start_9 .. :try_end_9} :catch_9

    return-object p1

    .line 179
    :catch_9
    :try_start_a
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->ISO_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 180
    invoke-static {v2}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v3

    .line 181
    invoke-static {v2}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object v4

    .line 182
    invoke-static {v2}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v2

    .line 183
    invoke-virtual {v3, v4}, Ljava/time/Year;->atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_a .. :try_end_a} :catch_a

    return-object p1

    .line 188
    :catch_a
    :try_start_b
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_WEEK_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 189
    invoke-static {v2}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v3

    .line 190
    invoke-static {v2}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object v4

    .line 191
    invoke-static {v2}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v2

    .line 192
    invoke-virtual {v3, v4}, Ljava/time/Year;->atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_b
    .catch Ljava/time/format/DateTimeParseException; {:try_start_b .. :try_end_b} :catch_b

    return-object p1

    .line 197
    :catch_b
    :try_start_c
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v2

    .line 198
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_c
    .catch Ljava/time/format/DateTimeParseException; {:try_start_c .. :try_end_c} :catch_c

    return-object p1

    .line 203
    :catch_c
    :try_start_d
    sget-object v2, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 204
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_d
    .catch Ljava/time/format/DateTimeParseException; {:try_start_d .. :try_end_d} :catch_d

    return-object p1

    .line 209
    :catch_d
    :try_start_e
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 210
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_e .. :try_end_e} :catch_e

    return-object p1

    .line 215
    :catch_e
    :try_start_f
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    new-instance v3, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDate;

    .line 216
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_f
    .catch Ljava/time/format/DateTimeParseException; {:try_start_f .. :try_end_f} :catch_f

    return-object p1

    .line 221
    :catch_f
    :try_start_10
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 222
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_10
    .catch Ljava/time/format/DateTimeParseException; {:try_start_10 .. :try_end_10} :catch_10

    return-object p1

    .line 227
    :catch_10
    :try_start_11
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->BASIC_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 228
    invoke-static {v2}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v3

    .line 229
    invoke-static {v2}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object v2

    .line 230
    invoke-virtual {v3, v2}, Ljava/time/Year;->atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_11
    .catch Ljava/time/format/DateTimeParseException; {:try_start_11 .. :try_end_11} :catch_11

    return-object p1

    .line 235
    :catch_11
    :try_start_12
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_DATE_HOUR:Ljava/time/format/DateTimeFormatter;

    new-instance v3, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    .line 236
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_12
    .catch Ljava/time/format/DateTimeParseException; {:try_start_12 .. :try_end_12} :catch_12

    return-object p1

    .line 241
    :catch_12
    :try_start_13
    sget-object v2, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_HOUR:Ljava/time/format/DateTimeFormatter;

    new-instance v3, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    .line 242
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_13
    .catch Ljava/time/format/DateTimeParseException; {:try_start_13 .. :try_end_13} :catch_13

    return-object p1

    .line 247
    :catch_13
    :try_start_14
    invoke-static {p1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v2

    .line 248
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_14
    .catch Ljava/time/format/DateTimeParseException; {:try_start_14 .. :try_end_14} :catch_14

    return-object p1

    :catch_14
    const/4 v0, 0x1

    .line 253
    :try_start_15
    invoke-static {p1}, Ljava/time/YearMonth;->parse(Ljava/lang/CharSequence;)Ljava/time/YearMonth;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v0}, Ljava/time/YearMonth;->atDay(I)Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_15
    .catch Ljava/time/format/DateTimeParseException; {:try_start_15 .. :try_end_15} :catch_15

    return-object p1

    .line 259
    :catch_15
    :try_start_16
    invoke-static {p1}, Ljava/time/Year;->parse(Ljava/lang/CharSequence;)Ljava/time/Year;

    move-result-object v1

    .line 260
    invoke-virtual {v1, v0}, Ljava/time/Year;->atDay(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_16
    .catch Ljava/time/format/DateTimeParseException; {:try_start_16 .. :try_end_16} :catch_16

    return-object p1

    .line 265
    :catch_16
    :try_start_17
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_YEAR_WEEK:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    .line 266
    sget-object v1, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 267
    sget-object v2, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 269
    invoke-static {v0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    .line 270
    invoke-virtual {v3}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    .line 271
    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 272
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 268
    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p1
    :try_end_17
    .catch Ljava/time/format/DateTimeParseException; {:try_start_17 .. :try_end_17} :catch_17

    return-object p1

    .line 277
    :catch_17
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot parse date"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v1, "date"

    .line 278
    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    throw v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 284
    check-cast p1, Ljava/util/Calendar;

    .line 285
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 287
    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object p1

    .line 289
    sget-object v0, Lcom/thoughtworks/xstream/core/util/ISO8601JavaTimeConverter;->STD_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
