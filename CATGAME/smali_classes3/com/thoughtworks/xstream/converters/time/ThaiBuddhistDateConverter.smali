.class public Lcom/thoughtworks/xstream/converters/time/ThaiBuddhistDateConverter;
.super Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;
.source "ThaiBuddhistDateConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter<",
        "Ljava/time/chrono/ThaiBuddhistEra;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 30
    const-class v0, Ljava/time/chrono/ThaiBuddhistDate;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic chronoLocalDateOf(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 0

    .line 26
    check-cast p1, Ljava/time/chrono/ThaiBuddhistEra;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/time/ThaiBuddhistDateConverter;->chronoLocalDateOf(Ljava/time/chrono/ThaiBuddhistEra;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method protected chronoLocalDateOf(Ljava/time/chrono/ThaiBuddhistEra;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "era"    # Ljava/time/chrono/ThaiBuddhistEra;
    .param p2, "prolepticYear"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 41
    invoke-static {p2, p3, p4}, Ljava/time/chrono/ThaiBuddhistDate;->of(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic eraOf(Ljava/lang/String;)Ljava/time/chrono/Era;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/time/ThaiBuddhistDateConverter;->eraOf(Ljava/lang/String;)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object p1

    return-object p1
.end method

.method protected eraOf(Ljava/lang/String;)Ljava/time/chrono/ThaiBuddhistEra;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 46
    invoke-static {p1}, Ljava/time/chrono/ThaiBuddhistEra;->valueOf(Ljava/lang/String;)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Thai Buddhist"

    invoke-virtual {p0, p1, v1, v0}, Lcom/thoughtworks/xstream/converters/time/ThaiBuddhistDateConverter;->parseChronoLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method
