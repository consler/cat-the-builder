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
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "writeLocale"    # Ljava/lang/String;
    .param p4, "errorLocale"    # Ljava/util/Locale;
    .param p5, "readFormat"    # Ljava/lang/String;
    .param p6, "writeFormat"    # Ljava/lang/String;
    .param p7, "readChronology"    # Ljava/lang/String;
    .param p8, "writeChronology"    # Ljava/lang/String;
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

    .line 132
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "invalid.date.format.string"

    const-string v6, "opencsv"

    invoke-direct/range {p0 .. p4}, Lcom/opencsv/bean/AbstractCsvConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    iget-object v0, v1, Lcom/opencsv/bean/ConverterDate;->locale:Ljava/util/Locale;

    move-object/from16 v7, p7

    invoke-direct {v1, v7, v0}, Lcom/opencsv/bean/ConverterDate;->getChronology(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object v8

    .line 136
    .local v8, "readChrono":Ljava/time/chrono/Chronology;
    iget-object v0, v1, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    move-object/from16 v9, p8

    invoke-direct {v1, v9, v0}, Lcom/opencsv/bean/ConverterDate;->getChronology(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object v10

    .line 140
    .local v10, "writeChrono":Ljava/time/chrono/Chronology;
    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_0
    const-class v0, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 141
    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    .line 142
    iget-object v0, v1, Lcom/opencsv/bean/ConverterDate;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v0}, Lcom/opencsv/bean/ConverterDate;->setDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 143
    .local v0, "dtfWithoutChronology":Ljava/time/format/DateTimeFormatter;
    invoke-virtual {v0, v8}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v14

    iput-object v14, v1, Lcom/opencsv/bean/ConverterDate;->readDtf:Ljava/time/format/DateTimeFormatter;

    .line 145
    invoke-direct/range {p0 .. p1}, Lcom/opencsv/bean/ConverterDate;->determineReadTemporalConversionFunction(Ljava/lang/Class;)Ljava/util/function/BiFunction;

    move-result-object v14

    iput-object v14, v1, Lcom/opencsv/bean/ConverterDate;->readTemporalConversionFunction:Ljava/util/function/BiFunction;

    .line 147
    .end local v0    # "dtfWithoutChronology":Ljava/time/format/DateTimeFormatter;
    goto :goto_0

    .line 148
    :cond_0
    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->readDtf:Ljava/time/format/DateTimeFormatter;

    .line 149
    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->readTemporalConversionFunction:Ljava/util/function/BiFunction;

    .line 150
    iget-object v0, v1, Lcom/opencsv/bean/ConverterDate;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v0}, Lcom/opencsv/bean/ConverterDate;->setDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, v1, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_0
    nop

    .line 162
    :try_start_1
    const-class v0, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    .line 164
    iget-object v0, v1, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    invoke-direct {v1, v4, v0}, Lcom/opencsv/bean/ConverterDate;->setDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 165
    .restart local v0    # "dtfWithoutChronology":Ljava/time/format/DateTimeFormatter;
    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v13

    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->writeDtf:Ljava/time/format/DateTimeFormatter;

    .line 166
    invoke-direct/range {p0 .. p1}, Lcom/opencsv/bean/ConverterDate;->determineWriteTemporalConversionFunction(Ljava/lang/Class;)Ljava/util/function/BiFunction;

    move-result-object v13

    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->writeTemporalConversionFunction:Ljava/util/function/BiFunction;

    .line 167
    .end local v0    # "dtfWithoutChronology":Ljava/time/format/DateTimeFormatter;
    goto :goto_1

    .line 168
    :cond_1
    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->writeDtf:Ljava/time/format/DateTimeFormatter;

    .line 169
    iput-object v13, v1, Lcom/opencsv/bean/ConverterDate;->writeTemporalConversionFunction:Ljava/util/function/BiFunction;

    .line 170
    iget-object v0, v1, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    invoke-direct {v1, v4, v0}, Lcom/opencsv/bean/ConverterDate;->setDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, v1, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_1
    nop

    .line 179
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v13, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    iget-object v15, v1, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 174
    invoke-static {v6, v15}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 175
    invoke-virtual {v6, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v4, v6, v11

    .line 173
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v14, v5}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v5, v13

    .line 176
    .local v5, "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v5, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 177
    throw v5

    .line 152
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    :catch_1
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v13, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    iget-object v15, v1, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 154
    invoke-static {v6, v15}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 155
    invoke-virtual {v6, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v3, v6, v11

    .line 153
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v14, v5}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v5, v13

    .line 156
    .restart local v5    # "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v5, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 157
    throw v5
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
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$i-MwJ0RNmEg8dqPkGMRL2FJw7WM;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$i-MwJ0RNmEg8dqPkGMRL2FJw7WM;

    return-object v0

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
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$pCHWCCjjgrMf5MAOkb8uLxzSvQ4;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$pCHWCCjjgrMf5MAOkb8uLxzSvQ4;

    return-object v0

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
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$z-Dvd9DX3UZf2l9_D6LRhvmmXv8;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$z-Dvd9DX3UZf2l9_D6LRhvmmXv8;

    return-object v0

    .line 211
    :cond_5
    const-class v0, Ljava/time/chrono/HijrahEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;

    return-object v0

    .line 213
    :cond_6
    const-class v0, Ljava/time/Instant;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$cL8mbLDvXoMq4U86LDyuskb_cUc;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$cL8mbLDvXoMq4U86LDyuskb_cUc;

    return-object v0

    .line 215
    :cond_7
    const-class v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$1DZrXa9pUms4h3o79XJwAcN4Fh0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$1DZrXa9pUms4h3o79XJwAcN4Fh0;

    return-object v0

    .line 217
    :cond_8
    const-class v0, Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 218
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$V4W5PeANlbLyj_An8s4JYDSXK2w;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$V4W5PeANlbLyj_An8s4JYDSXK2w;

    return-object v0

    .line 219
    :cond_9
    const-class v0, Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 220
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$2j3tL-BTDXg8DRgWK92XYK6SwPc;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$2j3tL-BTDXg8DRgWK92XYK6SwPc;

    return-object v0

    .line 221
    :cond_a
    const-class v0, Ljava/time/chrono/MinguoEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 222
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$0OMCwpTGMT34QBo8SpImrmypixY;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$0OMCwpTGMT34QBo8SpImrmypixY;

    return-object v0

    .line 223
    :cond_b
    const-class v0, Ljava/time/Month;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$Z86Pw1-cOrbzvCIZvuFuYGCIz5E;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$Z86Pw1-cOrbzvCIZvuFuYGCIz5E;

    return-object v0

    .line 225
    :cond_c
    const-class v0, Ljava/time/MonthDay;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 226
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$_-viAF8eWMx6_jzBL5xtSCDMN5k;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$_-viAF8eWMx6_jzBL5xtSCDMN5k;

    return-object v0

    .line 227
    :cond_d
    const-class v0, Ljava/time/OffsetDateTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 228
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$GpE31tH_Lnap4pSbV4hVwb9TLPQ;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$GpE31tH_Lnap4pSbV4hVwb9TLPQ;

    return-object v0

    .line 229
    :cond_e
    const-class v0, Ljava/time/OffsetTime;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 230
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$7VdI3bWLS2C4YBsKpUBawXE1Mxg;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$7VdI3bWLS2C4YBsKpUBawXE1Mxg;

    return-object v0

    .line 231
    :cond_f
    const-class v0, Ljava/time/chrono/ThaiBuddhistEra;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$9xws9VLZ4AfatlZbLuclrGPnANY;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$9xws9VLZ4AfatlZbLuclrGPnANY;

    return-object v0

    .line 233
    :cond_10
    const-class v0, Ljava/time/Year;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 234
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$10xfjH0CKqrVgm1q22WFpPz3TFM;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$10xfjH0CKqrVgm1q22WFpPz3TFM;

    return-object v0

    .line 235
    :cond_11
    const-class v0, Ljava/time/YearMonth;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 236
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$PYLg1ce7TQlrw1PTUH7Wswe3Vvs;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$PYLg1ce7TQlrw1PTUH7Wswe3Vvs;

    return-object v0

    .line 237
    :cond_12
    const-class v0, Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 238
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$NLQ88NRVkSi1QZBRwG_9Y-ffixw;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$NLQ88NRVkSi1QZBRwG_9Y-ffixw;

    return-object v0

    .line 240
    :cond_13
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 241
    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 242
    const-string v3, "csvdate.not.date"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 240
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_14
    :goto_0
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$R7mZu92BYyH9Oi2cXUXapN2SN8U;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$R7mZu92BYyH9Oi2cXUXapN2SN8U;

    return-object v0

    .line 201
    :cond_15
    :goto_1
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$aYfWD6BxwUarDNLZxavl42uGF1E;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$aYfWD6BxwUarDNLZxavl42uGF1E;

    return-object v0

    .line 198
    :cond_16
    :goto_2
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$gtaQvnBiOANARrRwyw9kV3hVFvw;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$gtaQvnBiOANARrRwyw9kV3hVFvw;

    return-object v0
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
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/time/Instant;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$6UX7ajHew2N1dM7leXI5-yNblEU;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$6UX7ajHew2N1dM7leXI5-yNblEU;

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$g9VZeGX4DORHoSTXntmfUDYTYy0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$g9VZeGX4DORHoSTXntmfUDYTYy0;

    return-object v0
.end method

.method private getChronology(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .locals 6
    .param p1, "readChronology"    # Ljava/lang/String;
    .param p2, "locale2"    # Ljava/util/Locale;

    .line 263
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p1}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p2}, Ljava/time/chrono/Chronology;->ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 272
    .local v0, "readChrono":Ljava/time/chrono/Chronology;
    nop

    .line 273
    return-object v0

    .line 266
    .end local v0    # "readChrono":Ljava/time/chrono/Chronology;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/time/DateTimeException;
    new-instance v1, Lcom/opencsv/exceptions/CsvBadConverterException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 268
    const-string v4, "opencsv"

    invoke-static {v4, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 269
    const-string v4, "chronology.not.found"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 268
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 270
    .local v1, "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
    throw v1
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$10(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 2
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 218
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$11(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$12(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 2
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/chrono/MinguoEra;->of(I)Ljava/time/chrono/MinguoEra;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$13(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$B2Bof4zy2_ZMS7oquRlDdJznie8;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$B2Bof4zy2_ZMS7oquRlDdJznie8;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Month;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$14(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$sL_1zXqh7GXCv2G9X40ozp_OBMA;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$sL_1zXqh7GXCv2G9X40ozp_OBMA;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/MonthDay;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$15(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$sdbO4BiAEcJ0Ab-aR8ZYLiX9zuo;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetDateTime;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$16(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 230
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$17(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 2
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 232
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistEra;->of(I)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$18(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 234
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$1t2bycXU085eFZcwODXkbd0X4Bk;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$1t2bycXU085eFZcwODXkbd0X4Bk;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Year;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$19(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 236
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$102LK-VjqD_Dw4HKR2kUw-BMsRk;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$102LK-VjqD_Dw4HKR2kUw-BMsRk;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$2(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$JBWLm7jbzHiLhHxYdB_IuO_vFO8;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$JBWLm7jbzHiLhHxYdB_IuO_vFO8;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$20(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$D9PJGzi4n5rLUQghiKm0Nz0klw0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$D9PJGzi4n5rLUQghiKm0Nz0klw0;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$3(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$up1HpCqucM_DXyY-rpDOyCcdmIA;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$up1HpCqucM_DXyY-rpDOyCcdmIA;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$4(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 3
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/time/temporal/TemporalQuery;

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$HLIz-RN5WLGpSQ_lvRpBFTGDBK8;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$HLIz-RN5WLGpSQ_lvRpBFTGDBK8;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$2uxKVwA3mLxI8G7f0yYYe0idjjE;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$2uxKVwA3mLxI8G7f0yYYe0idjjE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$KcXnxQJ0oMC0LvA2W-egvh5YTnc;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$KcXnxQJ0oMC0LvA2W-egvh5YTnc;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$gzy4lFwhWdXRI_nfgC6x7-FPHE4;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$gzy4lFwhWdXRI_nfgC6x7-FPHE4;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$2svafa2Ga6tkZP4Eq63dgR0MZLs;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$2svafa2Ga6tkZP4Eq63dgR0MZLs;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$W53dJtbZdrp1oN8QHUwMTBAKZQk;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$W53dJtbZdrp1oN8QHUwMTBAKZQk;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseBest(Ljava/lang/CharSequence;[Ljava/time/temporal/TemporalQuery;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$5(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 2
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/chrono/IsoEra;->of(I)Ljava/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$6(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 210
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$oTEd4Achn3nCDFewgvAylHK67os;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$oTEd4Achn3nCDFewgvAylHK67os;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/DayOfWeek;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$7(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 2
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 212
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/chrono/HijrahEra;->of(I)Ljava/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$8(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method static synthetic lambda$determineReadTemporalConversionFunction$9(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "readDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "s"    # Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$cAqgTua2wzM4zVhYs7gpvwhuEmo;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$cAqgTua2wzM4zVhYs7gpvwhuEmo;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    return-object v0
.end method

.method static synthetic lambda$determineWriteTemporalConversionFunction$0(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 2
    .param p0, "writeDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "value"    # Ljava/time/temporal/TemporalAccessor;

    .line 184
    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 185
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$determineWriteTemporalConversionFunction$1(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 1
    .param p0, "writeDtf"    # Ljava/time/format/DateTimeFormatter;
    .param p1, "value"    # Ljava/time/temporal/TemporalAccessor;

    .line 188
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "formatLocale"    # Ljava/util/Locale;

    .line 247
    if-eqz p2, :cond_0

    .line 248
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private setDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "formatLocale"    # Ljava/util/Locale;

    .line 254
    iget-object v0, p0, Lcom/opencsv/bean/ConverterDate;->writeLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p1, p2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertToRead(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "returnValue":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 282
    const-class v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    iget-object v4, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 287
    .local v4, "d":Ljava/util/Date;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 302
    goto/16 :goto_4

    .line 287
    .end local v4    # "d":Ljava/util/Date;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "returnValue":Ljava/lang/Object;
    .end local p1    # "value":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0

    .line 296
    .restart local v0    # "returnValue":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v2, p1, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 300
    .local v2, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 301
    throw v2

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_0
    const-class v1, Ljava/time/temporal/TemporalAccessor;

    iget-object v4, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :try_start_5
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->readTemporalConversionFunction:Ljava/util/function/BiFunction;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->readDtf:Ljava/time/format/DateTimeFormatter;

    invoke-interface {v2, v3, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/time/DateTimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v0, v1

    .line 311
    goto/16 :goto_4

    .line 307
    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v2, p1, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 309
    .restart local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 310
    throw v2

    .line 313
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_1
    const-class v1, Ljava/util/Calendar;

    iget-object v4, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    iget-object v4, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    .line 314
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 352
    :cond_2
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v4, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    const-string v5, "opencsv"

    iget-object v6, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 353
    invoke-static {v5, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    const-string v6, "csvdate.not.date"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    aput-object v6, v3, v2

    .line 352
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v4, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_3
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v1
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_8

    .line 319
    :try_start_7
    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->readSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 320
    .local v2, "d":Ljava/util/Date;
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 325
    nop

    .line 329
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 330
    .local v1, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 333
    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    const-class v4, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne v3, v4, :cond_4

    .line 335
    :try_start_8
    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    .line 336
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v4

    .line 337
    invoke-virtual {v4, v1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_8} :catch_7

    move-object v0, v3

    .line 347
    goto :goto_3

    .line 338
    :catch_7
    move-exception v3

    .line 342
    .local v3, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v4, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    const-string v5, "opencsv"

    iget-object v6, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 343
    invoke-static {v5, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    const-string v6, "xmlgregoriancalendar.impossible"

    .line 344
    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    .line 345
    .local v4, "ex":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v4, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 346
    throw v4

    .line 349
    .end local v3    # "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    .end local v4    # "ex":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_4
    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    .end local v1    # "gc":Ljava/util/GregorianCalendar;
    .end local v2    # "d":Ljava/util/Date;
    :goto_3
    goto :goto_4

    .line 320
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "returnValue":Ljava/lang/Object;
    .end local p1    # "value":Ljava/lang/String;
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_8

    .line 321
    .restart local v0    # "returnValue":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_8
    move-exception v1

    .line 322
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v2, p1, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 323
    .local v2, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 324
    throw v2

    .line 357
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_5
    :goto_4
    return-object v0
.end method

.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "returnValue":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 380
    const-class v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    move-object v3, p1

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 383
    monitor-exit v1

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 385
    :cond_0
    const-class v1, Ljava/time/temporal/TemporalAccessor;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    :try_start_1
    iget-object v1, p0, Lcom/opencsv/bean/ConverterDate;->writeTemporalConversionFunction:Ljava/util/function/BiFunction;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->writeDtf:Ljava/time/format/DateTimeFormatter;

    move-object v3, p1

    check-cast v3, Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 392
    goto :goto_3

    .line 388
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-direct {v2, p1, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 390
    .local v2, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 391
    throw v2

    .line 394
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_1
    const-class v1, Ljava/util/Calendar;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 406
    :cond_2
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    const-string v3, "opencsv"

    iget-object v4, p0, Lcom/opencsv/bean/ConverterDate;->errorLocale:Ljava/util/Locale;

    .line 407
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "csvdate.not.date"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/opencsv/bean/ConverterDate;->type:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 406
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_3
    :goto_1
    instance-of v1, p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v1, :cond_4

    .line 398
    move-object v1, p1

    check-cast v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    .local v1, "c":Ljava/util/Calendar;
    goto :goto_2

    .line 400
    .end local v1    # "c":Ljava/util/Calendar;
    :cond_4
    move-object v1, p1

    check-cast v1, Ljava/util/Calendar;

    .line 402
    .restart local v1    # "c":Ljava/util/Calendar;
    :goto_2
    iget-object v2, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 403
    :try_start_2
    iget-object v3, p0, Lcom/opencsv/bean/ConverterDate;->writeSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 404
    monitor-exit v2

    .line 405
    .end local v1    # "c":Ljava/util/Calendar;
    goto :goto_3

    .line 404
    .restart local v1    # "c":Ljava/util/Calendar;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 410
    .end local v1    # "c":Ljava/util/Calendar;
    :cond_5
    :goto_3
    return-object v0
.end method
