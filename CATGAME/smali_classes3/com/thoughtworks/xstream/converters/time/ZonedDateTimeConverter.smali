.class public Lcom/thoughtworks/xstream/converters/time/ZonedDateTimeConverter;
.super Ljava/lang/Object;
.source "ZonedDateTimeConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# static fields
.field private static final FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "uuuu-MM-dd\'T\'HH:mm:ss"

    .line 35
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "["

    .line 38
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "]"

    .line 40
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/time/ZonedDateTimeConverter;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 46
    const-class v0, Ljava/time/ZonedDateTime;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 62
    :try_start_0
    invoke-static {p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot parse value as zoned date time"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "value"

    .line 65
    invoke-virtual {v1, v0, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    throw v1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    check-cast p1, Ljava/time/ZonedDateTime;

    .line 56
    sget-object v0, Lcom/thoughtworks/xstream/converters/time/ZonedDateTimeConverter;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
