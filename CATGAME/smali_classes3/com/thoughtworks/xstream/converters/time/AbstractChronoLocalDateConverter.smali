.class abstract Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "AbstractChronoLocalDateConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/time/chrono/Era;",
        ">",
        "Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;"
    }
.end annotation


# static fields
.field private static final CHRONO_DATE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "^ (\\w+) (\\d+)-(\\d+)-(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;->CHRONO_DATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;, "Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter<TE;>;"
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract chronoLocalDateOf(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;III)",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation
.end method

.method protected abstract eraOf(Ljava/lang/String;)Ljava/time/chrono/Era;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation
.end method

.method protected parseChronoLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/time/chrono/ChronoLocalDate;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "dateTypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/time/chrono/Chronology;",
            ">;)",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;, "Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter<TE;>;"
    .local p3, "chronologies":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    .local v0, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " date"

    const-string v4, "Cannot parse value as "

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/Chronology;

    .line 47
    .local v2, "chronology":Ljava/time/chrono/Chronology;
    invoke-interface {v2}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "id":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 49
    sget-object v6, Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;->CHRONO_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 50
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    const/4 v7, 0x0

    .line 53
    .local v7, "era":Ljava/time/chrono/Era;, "TE;"
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;->eraOf(Ljava/lang/String;)Ljava/time/chrono/Era;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v8

    .line 57
    nop

    .line 58
    if-eqz v7, :cond_1

    .line 60
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    .line 61
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    .line 61
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 60
    invoke-virtual {p0, v7, v1, v8, v9}, Lcom/thoughtworks/xstream/converters/time/AbstractChronoLocalDateConverter;->chronoLocalDateOf(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/time/DateTimeException;
    new-instance v8, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 64
    goto :goto_1

    .line 54
    .end local v1    # "e":Ljava/time/DateTimeException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 56
    goto :goto_1

    .line 69
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "chronology":Ljava/time/chrono/Chronology;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "era":Ljava/time/chrono/Era;, "TE;"
    :cond_1
    goto/16 :goto_0

    .line 70
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 71
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 73
    :cond_3
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    throw v0
.end method
