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

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->type:Ljava/lang/Class;

    .line 63
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->locale:Ljava/util/Locale;

    .line 64
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->writeLocale:Ljava/util/Locale;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->errorLocale:Ljava/util/Locale;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "writeLocale"    # Ljava/lang/String;
    .param p4, "errorLocale"    # Ljava/util/Locale;
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
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->type:Ljava/lang/Class;

    .line 81
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->locale:Ljava/util/Locale;

    .line 82
    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->writeLocale:Ljava/util/Locale;

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->errorLocale:Ljava/util/Locale;

    .line 84
    return-void
.end method


# virtual methods
.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 104
    const-string v0, ""

    invoke-static {p1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->errorLocale:Ljava/util/Locale;

    .line 110
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    .line 119
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->locale:Ljava/util/Locale;

    .line 120
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
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/opencsv/bean/AbstractCsvConverter;->type:Ljava/lang/Class;

    .line 115
    return-void
.end method

.method public setWriteLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "writeLocale"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/opencsv/bean/AbstractCsvConverter;->writeLocale:Ljava/util/Locale;

    .line 127
    return-void
.end method
