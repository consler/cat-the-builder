.class public abstract Lcom/opencsv/bean/AbstractCsvConverter;
.super Ljava/lang/Object;
.source "AbstractCsvConverter.java"

# interfaces
.implements Lcom/opencsv/bean/CsvConverter;


# instance fields
.field protected errorLocale:Ljava/util/Locale;

.field protected locale:Ljava/util/Locale;

.field protected type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected writeLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->type:Ljava/lang/Class;

    .line 63
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->locale:Ljava/util/Locale;

    .line 64
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->writeLocale:Ljava/util/Locale;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->type:Ljava/lang/Class;

    .line 81
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->locale:Ljava/util/Locale;

    .line 82
    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->writeLocale:Ljava/util/Locale;

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p4, p1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->errorLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    const-string v0, ""

    .line 104
    invoke-static {p1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->type:Ljava/lang/Class;

    return-void
.end method

.method public setWriteLocale(Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->writeLocale:Ljava/util/Locale;

    return-void
.end method
