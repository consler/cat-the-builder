.class public final Lcom/esotericsoftware/kryo/serializers/TimeSerializers;
.super Ljava/lang/Object;
.source "TimeSerializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$PeriodSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$MonthDaySerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$YearMonthSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$YearSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZonedDateTimeSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$OffsetDateTimeSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$OffsetTimeSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneIdSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneOffsetSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateTimeSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$InstantSerializer;,
        Lcom/esotericsoftware/kryo/serializers/TimeSerializers$DurationSerializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 2

    const-string v0, "java.time.Duration"

    .line 51
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/time/Duration;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$DurationSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_0
    const-string v0, "java.time.Instant"

    .line 52
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/time/Instant;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$InstantSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_1
    const-string v0, "java.time.LocalDate"

    .line 53
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/time/LocalDate;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_2
    const-string v0, "java.time.LocalTime"

    .line 54
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/time/LocalTime;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_3
    const-string v0, "java.time.LocalDateTime"

    .line 55
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const-class v0, Ljava/time/LocalDateTime;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateTimeSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_4
    const-string v0, "java.time.ZoneOffset"

    .line 57
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Ljava/time/ZoneOffset;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneOffsetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_5
    const-string v0, "java.time.ZoneId"

    .line 58
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Ljava/time/ZoneId;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneIdSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_6
    const-string v0, "java.time.OffsetTime"

    .line 59
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Ljava/time/OffsetTime;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$OffsetTimeSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_7
    const-string v0, "java.time.OffsetDateTime"

    .line 60
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    const-class v0, Ljava/time/OffsetDateTime;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$OffsetDateTimeSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_8
    const-string v0, "java.time.ZonedDateTime"

    .line 62
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    const-class v0, Ljava/time/ZonedDateTime;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZonedDateTimeSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_9
    const-string v0, "java.time.Year"

    .line 64
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Ljava/time/Year;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$YearSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_a
    const-string v0, "java.time.YearMonth"

    .line 65
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/time/YearMonth;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$YearMonthSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_b
    const-string v0, "java.time.MonthDay"

    .line 66
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-class v0, Ljava/time/MonthDay;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$MonthDaySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_c
    const-string v0, "java.time.Period"

    .line 67
    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-class v0, Ljava/time/Period;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$PeriodSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_d
    return-void
.end method
