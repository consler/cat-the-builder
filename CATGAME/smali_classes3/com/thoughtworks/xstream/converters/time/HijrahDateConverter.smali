.class public Lcom/thoughtworks/xstream/converters/time/HijrahDateConverter;
.super Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;
.source "HijrahDateConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter<",
        "Ljava/time/chrono/HijrahEra;",
        ">;"
    }
.end annotation


# instance fields
.field private final hijrahChronologies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/time/HijrahDateConverter;->hijrahChronologies:Ljava/util/Set;

    .line 37
    invoke-static {}, Ljava/time/chrono/Chronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/Chronology;

    .line 39
    instance-of v2, v1, Ljava/time/chrono/HijrahChronology;

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/time/HijrahDateConverter;->hijrahChronologies:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 47
    const-class v0, Ljava/time/chrono/HijrahDate;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic chronoLocalDateOf(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 0

    .line 28
    check-cast p1, Ljava/time/chrono/HijrahEra;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/time/HijrahDateConverter;->chronoLocalDateOf(Ljava/time/chrono/HijrahEra;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method protected chronoLocalDateOf(Ljava/time/chrono/HijrahEra;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 0

    if-eqz p1, :cond_0

    .line 58
    invoke-static {p2, p3, p4}, Ljava/time/chrono/HijrahDate;->of(III)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic eraOf(Ljava/lang/String;)Ljava/time/chrono/Era;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/time/HijrahDateConverter;->eraOf(Ljava/lang/String;)Ljava/time/chrono/HijrahEra;

    move-result-object p1

    return-object p1
.end method

.method protected eraOf(Ljava/lang/String;)Ljava/time/chrono/HijrahEra;
    .locals 0

    .line 63
    invoke-static {p1}, Ljava/time/chrono/HijrahEra;->valueOf(Ljava/lang/String;)Ljava/time/chrono/HijrahEra;

    move-result-object p1

    return-object p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Hijrah"

    .line 52
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/time/HijrahDateConverter;->hijrahChronologies:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/converters/time/HijrahDateConverter;->parseChronoLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method
