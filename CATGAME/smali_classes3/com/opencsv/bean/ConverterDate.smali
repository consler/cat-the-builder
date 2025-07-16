.class public Lcom/opencsv/bean/ConverterDate;
.super Lcom/opencsv/bean/AbstractCsvConverter;
.source "ConverterDate.java"


# static fields
.field private static final CSVDATE_NOT_DATE:Ljava/lang/String; = "csvdate.not.date"


# instance fields
.field private final readDtf:Ljava/time/format/DateTimeFormatter;

.field private final readSdf:Ljava/text/SimpleDateFormat;

.field private final readTemporalConversionFunction:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private final writeDtf:Ljava/time/format/DateTimeFormatter;

.field private final writeSdf:Ljava/text/SimpleDateFormat;

.field private final writeTemporalConversionFunction:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4NBeipImEoAVGID5OxXb3YbN1LU(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;
    .locals 0

    invoke-static {p0}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5Ao3A7GVHUbIVsionUYLvcAWXMY(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/OffsetDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5bl1mH5sOy2qxCfIvc679Kdp9Ko(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 0

    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7PHXR6ft5elBUCUaon2J9Hrkqkk(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;
    .locals 0

    invoke-static {p0}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8LOkmqrfUZIVQ9vRfOX9QW6Lx24(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-static {p0}, Ljava/time/chrono/ChronoLocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BwCzcqUqByI-sySvqu6-pez3opQ(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C16LGBYwkvencU1xVxj4DtyvRKg(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;
    .locals 0

    invoke-static {p0}, Ljava/time/Month;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Htv8q-r9yP53ZNgOFp8EabPN8ZE(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;
    .locals 0

    invoke-static {p0}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Iwkjj42MDNtTx2ctvgxvjLULy7Q(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .locals 0

    invoke-static {p0}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M-OcHB0MZSmB-SYRazGLxcI3VI4(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .locals 0

    invoke-static {p0}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TqQ-ucMDDG8HLo-iTiWgQ8I72oQ(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 0

    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Um1dw9-Pq48UfaThiKhJ9PV65fs(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VPr89HQOq67u9uM-TeQCxfrmwTA(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/OffsetDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XWZEnKUEcU0fMlfWjqlS9BU4mZE(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z9h0KkR5ob63Rhjep_hd1TtDozs(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZzhYCDVA9YULuZ70faWnZKrrLFQ(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dItsQvKsK6vtKR1GgX5gEfmoW7g(Ljava/time/temporal/TemporalAccessor;)Ljava/time/DayOfWeek;
    .locals 0

    invoke-static {p0}, Ljava/time/DayOfWeek;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/DayOfWeek;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$duKZssHzuKXqmQjpCnIybUYVK_s(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    .locals 0

    invoke-static {p0}, Ljava/time/ZoneOffset;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;

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

.method public static synthetic $r8$lambda$s8T3Wy3CSRTJN_wu6Y_qp3wsdyM(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "invalid.date.format.string"

    const-string v1, "opencsv"

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opencsv/bean/AbstractCsvConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    iget-object p2, p0, Lcom/opencsv/bean/ConverterDate;->locale:Ljava/util/Locale;

    invoke-direct {p0, p7, p2}, Lcom/opencsv/bean/ConverterDate;->getChronology(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object p2

    .line 136
    iget-object p3, p0, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    invoke-direct {p0, p8, p3}, Lcom/opencsv/bean/ConverterDate;->getChronology(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object p3

    const/4 p4, 0x0

    const/4 p7, 0x1

    .line 140
    :try_start_0
    const-class p8, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {p8, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p8

    const/4 v2, 0x0

    if-eqz p8, :cond_0

    .line 141
    iput-object v2, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    .line 142
    iget-object p8, p0, Lcom/opencsv/bean/ConverterDate;->locale:Ljava/util/Locale;

    invoke-direct {p0, p5, p8}, Lcom/opencsv/bean/ConverterDate;->setDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p8

    .line 143
    invoke-virtual {p8, p2}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    iput-object p2, p0, Lcom/opencsv/bean/ConverterDate;->readDtf:Ljava/time/format/DateTimeFormatter;

    .line 145
    invoke-direct {p0, p1}, Lcom/opencsv/bean/ConverterDate;->determineReadTemporalConversionFunction(Ljava/lang/Class;)Ljava/util/function/BiFunction;

    move-result-object p2

    iput-object p2, p0, Lcom/opencsv/bean/ConverterDate;->readTemporalConversionFunction:Ljava/util/function/BiFunction;

    goto :goto_0

    .line 148
    :cond_0
    iput-object v2, p0, Lcom/opencsv/bean/ConverterDate;->readDtf:Ljava/time/format/DateTimeFormatter;

    .line 149
    iput-object v2, p0, Lcom/opencsv/bean/ConverterDate;->readTemporalConversionFunction:Ljava/util/function/BiFunction;

    .line 150
    iget-object p2, p0, Lcom/opencsv/bean/ConverterDate;->locale:Ljava/util/Locale;

    invoke-direct {p0, p5, p2}, Lcom/opencsv/bean/ConverterDate;->setDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :goto_0
    :try_start_1
    const-class p2, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 163
    iput-object v2, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    .line 164
    iget-object p2, p0, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    invoke-direct {p0, p6, p2}, Lcom/opencsv/bean/ConverterDate;->setDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    .line 165
    invoke-virtual {p2, p3}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    iput-object p2, p0, Lcom/opencsv/bean/ConverterDate;->writeDtf:Ljava/time/format/DateTimeFormatter;

    .line 166
    invoke-direct {p0, p1}, Lcom/opencsv/bean/ConverterDate;->determineWriteTemporalConversionFunction(Ljava/lang/Class;)Ljava/util/function/BiFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/ConverterDate;->writeTemporalConversionFunction:Ljava/util/function/BiFunction;

    goto :goto_1

    .line 168
    :cond_1
    iput-object v2, p0, Lcom/opencsv/bean/ConverterDate;->writeDtf:Ljava/time/format/DateTimeFormatter;

    .line 169
    iput-object v2, p0, Lcom/opencsv/bean/ConverterDate;->writeTemporalConversionFunction:Ljava/util/function/BiFunction;

    .line 170
    iget-object p1, p0, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    invoke-direct {p0, p6, p1}, Lcom/opencsv/bean/ConverterDate;->setDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 173
    new-instance p2, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object p5, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 174
    invoke-static {v1, p5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p5

    .line 175
    invoke-virtual {p5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-array p7, p7, [Ljava/lang/Object;

    aput-object p6, p7, p4

    .line 173
    invoke-static {p5, p7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 177
    throw p2

    :catch_1
    move-exception p1

    .line 153
    new-instance p2, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object p6, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 154
    invoke-static {v1, p6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p6

    .line 155
    invoke-virtual {p6, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    new-array p7, p7, [Ljava/lang/Object;

    aput-object p5, p7, p4

    .line 153
    invoke-static {p6, p7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 157
    throw p2
.end method

.method private determineReadTemporalConversionFunction(Ljava/lang/Class;)Ljava/util/function/BiFunction;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/function/BiFunction<",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;"
        }
    .end annotation

    .line 194
    const-class v0, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda9;-><init>()V

    return-object p1

    .line 196
    :cond_0
    const-class v0, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-class v0, Ljava/time/LocalDateTime;

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 199
    :cond_1
    const-class v0, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-class v0, Ljava/time/ZonedDateTime;

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 202
    :cond_2
    const-class v0, Ljava/time/temporal/Temporal;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda24;-><init>()V

    return-object p1

    .line 207
    :cond_3
    const-class v0, Ljava/time/chrono/Era;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-class v0, Ljava/time/chrono/IsoEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 209
    :cond_4
    const-class v0, Ljava/time/DayOfWeek;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda26;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda26;-><init>()V

    return-object p1

    .line 211
    :cond_5
    const-class v0, Ljava/time/chrono/HijrahEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda27;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda27;-><init>()V

    return-object p1

    .line 213
    :cond_6
    const-class v0, Ljava/time/Instant;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda28;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda28;-><init>()V

    return-object p1

    .line 215
    :cond_7
    const-class v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda29;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda29;-><init>()V

    return-object p1

    .line 217
    :cond_8
    const-class v0, Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 218
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda30;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda30;-><init>()V

    return-object p1

    .line 219
    :cond_9
    const-class v0, Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 220
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda10;-><init>()V

    return-object p1

    .line 221
    :cond_a
    const-class v0, Ljava/time/chrono/MinguoEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 222
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda12;-><init>()V

    return-object p1

    .line 223
    :cond_b
    const-class v0, Ljava/time/Month;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda13;-><init>()V

    return-object p1

    .line 225
    :cond_c
    const-class v0, Ljava/time/MonthDay;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 226
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda14;-><init>()V

    return-object p1

    .line 227
    :cond_d
    const-class v0, Ljava/time/OffsetDateTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 228
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda15;-><init>()V

    return-object p1

    .line 229
    :cond_e
    const-class v0, Ljava/time/OffsetTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 230
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda16;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda16;-><init>()V

    return-object p1

    .line 231
    :cond_f
    const-class v0, Ljava/time/chrono/ThaiBuddhistEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda17;-><init>()V

    return-object p1

    .line 233
    :cond_10
    const-class v0, Ljava/time/Year;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 234
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda18;-><init>()V

    return-object p1

    .line 235
    :cond_11
    const-class v0, Ljava/time/YearMonth;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 236
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda19;-><init>()V

    return-object p1

    .line 237
    :cond_12
    const-class v0, Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 238
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda20;-><init>()V

    return-object p1

    .line 240
    :cond_13
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "opencsv"

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 241
    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "csvdate.not.date"

    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 240
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_14
    :goto_0
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda25;-><init>()V

    return-object p1

    .line 201
    :cond_15
    :goto_1
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda23;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda23;-><init>()V

    return-object p1

    .line 198
    :cond_16
    :goto_2
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda21;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda21;-><init>()V

    return-object p1
.end method

.method private determineWriteTemporalConversionFunction(Ljava/lang/Class;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/function/BiFunction<",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    const-class v0, Ljava/time/Instant;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda2;-><init>()V

    return-object p1

    .line 188
    :cond_0
    new-instance p1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda3;-><init>()V

    return-object p1
.end method

.method private getChronology(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .locals 5

    .line 263
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p1}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object p1

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p2}, Ljava/time/chrono/Chronology;->ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p2

    .line 267
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "opencsv"

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 268
    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "chronology.not.found"

    .line 269
    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 268
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p2}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
    throw v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$10(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    invoke-static {p0}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$11(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 220
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/LocalTime;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$12(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    invoke-static {p0}, Ljava/time/chrono/MinguoEra;->of(I)Ljava/time/chrono/MinguoEra;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$13(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 224
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Month;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$14(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 226
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/MonthDay;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$15(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 228
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/OffsetDateTime;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$16(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 230
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda40;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/OffsetTime;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$17(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    invoke-static {p0}, Ljava/time/chrono/ThaiBuddhistEra;->of(I)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$18(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 234
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Year;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$19(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 236
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda34;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/YearMonth;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$2(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 198
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/LocalDateTime;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$20(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 238
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda41;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/ZoneOffset;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$3(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 201
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda39;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/ZonedDateTime;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$4(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/time/temporal/TemporalQuery;

    .line 203
    new-instance v1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda11;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda22;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda33;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda36;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda37;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda38;

    invoke-direct {v1}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda38;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseBest(Ljava/lang/CharSequence;[Ljava/time/temporal/TemporalQuery;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$5(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    invoke-static {p0}, Ljava/time/chrono/IsoEra;->of(I)Ljava/time/chrono/IsoEra;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$6(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 210
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda35;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/DayOfWeek;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$7(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    invoke-static {p0}, Ljava/time/chrono/HijrahEra;->of(I)Ljava/time/chrono/HijrahEra;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$8(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 214
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Instant;

    return-object p0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$9(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .line 216
    new-instance v0, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/opencsv/bean/ConverterDate$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/chrono/ChronoLocalDate;

    return-object p0
.end method

.method static synthetic lambda$determineWriteTemporalConversionFunction$0(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 1

    .line 184
    check-cast p1, Ljava/time/Instant;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$determineWriteTemporalConversionFunction$1(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1

    if-eqz p2, :cond_0

    .line 248
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    .line 250
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private setDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p1, p2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    return-object p1

    .line 257
    :cond_0
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public convertToRead(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    const-class v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 287
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    .line 287
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 299
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v1, p1, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 300
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 301
    throw v1

    .line 304
    :cond_0
    const-class v0, Ljava/time/temporal/TemporalAccessor;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :try_start_5
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->readTemporalConversionFunction:Ljava/util/function/BiFunction;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->readDtf:Ljava/time/format/DateTimeFormatter;

    invoke-interface {v1, v2, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/time/DateTimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    .line 308
    :goto_1
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v1, p1, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 309
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 310
    throw v1

    .line 313
    :cond_1
    const-class v0, Ljava/util/Calendar;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 352
    :cond_2
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    const-string v4, "opencsv"

    iget-object v5, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 353
    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    const-string v5, "csvdate.not.date"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    aput-object v5, v2, v1

    .line 352
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v3, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_3
    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_8

    .line 319
    :try_start_7
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 320
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 329
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 330
    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 333
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne v0, v1, :cond_4

    .line 335
    :try_start_8
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    .line 336
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v1

    .line 337
    invoke-virtual {v1, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    .line 335
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    :catch_7
    move-exception p1

    .line 342
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    const-string v1, "opencsv"

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 343
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "xmlgregoriancalendar.impossible"

    .line 344
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 346
    throw v0

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 320
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    move-exception v0

    .line 322
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v1, p1, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 323
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 324
    throw v1

    :cond_5
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method

.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 380
    const-class v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 383
    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 385
    :cond_0
    const-class v0, Ljava/time/temporal/TemporalAccessor;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->writeTemporalConversionFunction:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->writeDtf:Ljava/time/format/DateTimeFormatter;

    move-object v2, p1

    check-cast v2, Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 389
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v1, p1, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 390
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 391
    throw v1

    .line 394
    :cond_1
    const-class v0, Ljava/util/Calendar;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 406
    :cond_2
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    const-string v2, "opencsv"

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 407
    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "csvdate.not.date"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 406
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_3
    :goto_1
    instance-of v0, p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v0, :cond_4

    .line 398
    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object p1

    goto :goto_2

    .line 400
    :cond_4
    check-cast p1, Ljava/util/Calendar;

    .line 402
    :goto_2
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 403
    :try_start_2
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 404
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method
