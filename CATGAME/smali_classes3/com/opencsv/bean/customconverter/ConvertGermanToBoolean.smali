.class public Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;
.super Lcom/opencsv/bean/AbstractBeanField;
.source "ConvertGermanToBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractBeanField<",
        "TT;TI;>;"
    }
.end annotation


# static fields
.field protected static final FALSCH:Ljava/lang/String; = "falsch"

.field protected static final WAHR:Ljava/lang/String; = "wahr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/opencsv/bean/AbstractBeanField;-><init>()V

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "1"

    const-string v1, "w"

    const-string v2, "wahr"

    const-string v3, "ja"

    const-string v4, "j"

    .line 64
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "f"

    const-string v3, "falsch"

    const-string v4, "nein"

    const-string v5, "n"

    .line 65
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    :try_start_0
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->field:Ljava/lang/reflect/Field;

    .line 71
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "convertGermanToBoolean"

    iget-object v4, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->errorLocale:Ljava/util/Locale;

    .line 72
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "input.not.boolean"

    .line 73
    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 75
    throw v1
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 94
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "wahr"

    goto :goto_0

    :cond_0
    const-string p1, "falsch"
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    const-string v1, "convertGermanToBoolean"

    iget-object v2, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->errorLocale:Ljava/util/Locale;

    .line 101
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "field.not.boolean"

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 104
    throw v0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method
