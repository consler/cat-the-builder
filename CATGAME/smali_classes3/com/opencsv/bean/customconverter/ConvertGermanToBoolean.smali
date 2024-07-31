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
    .local p0, "this":Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;, "Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean<TT;TI;>;"
    invoke-direct {p0}, Lcom/opencsv/bean/AbstractBeanField;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;, "Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean<TT;TI;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const-string v0, "wahr"

    const-string v1, "ja"

    const-string v2, "j"

    const-string v3, "1"

    const-string v4, "w"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "trueStrings":[Ljava/lang/String;
    const-string v1, "falsch"

    const-string v2, "nein"

    const-string v3, "n"

    const-string v4, "0"

    const-string v5, "f"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "falseStrings":[Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    .local v2, "bc":Lorg/apache/commons/beanutils/Converter;
    :try_start_0
    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Lorg/apache/commons/beanutils/ConversionException;
    new-instance v4, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v5, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->field:Ljava/lang/reflect/Field;

    .line 71
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->errorLocale:Ljava/util/Locale;

    .line 72
    const-string v7, "convertGermanToBoolean"

    invoke-static {v7, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 73
    const-string v7, "input.not.boolean"

    invoke-virtual {v6, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 74
    .local v4, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v4, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 75
    throw v4
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;, "Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean<TT;TI;>;"
    const-string v0, ""

    .line 93
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 94
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 95
    .local v1, "b":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "wahr"

    goto :goto_0

    :cond_0
    const-string v2, "falsch"
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 98
    .end local v1    # "b":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->errorLocale:Ljava/util/Locale;

    .line 101
    const-string v4, "convertGermanToBoolean"

    invoke-static {v4, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 102
    const-string v4, "field.not.boolean"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 104
    throw v2

    .line 105
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_1
    :goto_1
    nop

    .line 106
    return-object v0
.end method
