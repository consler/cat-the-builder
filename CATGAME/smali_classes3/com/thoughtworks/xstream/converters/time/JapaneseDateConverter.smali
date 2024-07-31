.class public Lcom/thoughtworks/xstream/converters/time/JapaneseDateConverter;
.super Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;
.source "JapaneseDateConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter<",
        "Ljava/time/chrono/JapaneseEra;",
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
    const-class v0, Ljava/time/chrono/JapaneseDate;

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
    check-cast p1, Ljava/time/chrono/JapaneseEra;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/time/JapaneseDateConverter;->chronoLocalDateOf(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method protected chronoLocalDateOf(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "prolepticYear"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 41
    invoke-static {p1, p2, p3, p4}, Ljava/time/chrono/JapaneseDate;->of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic eraOf(Ljava/lang/String;)Ljava/time/chrono/Era;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/time/JapaneseDateConverter;->eraOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method protected eraOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 46
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->valueOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Japanese"

    invoke-virtual {p0, p1, v1, v0}, Lcom/thoughtworks/xstream/converters/time/JapaneseDateConverter;->parseChronoLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method
