.class public Lcom/opencsv/bean/BeanFieldSingleValue;
.super Lcom/opencsv/bean/AbstractBeanField;
.source "BeanFieldSingleValue.java"


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


# instance fields
.field protected final capture:Ljava/util/regex/Pattern;

.field protected final writeFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "required"    # Z
    .param p4, "errorLocale"    # Ljava/util/Locale;
    .param p5, "converter"    # Lcom/opencsv/bean/CsvConverter;
    .param p6, "capture"    # Ljava/lang/String;
    .param p7, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/util/Locale;",
            "Lcom/opencsv/bean/CsvConverter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/opencsv/bean/BeanFieldSingleValue;, "Lcom/opencsv/bean/BeanFieldSingleValue<TT;TI;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/opencsv/bean/BeanFieldSingleValue;

    invoke-direct/range {p0 .. p5}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;)V

    .line 74
    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-static {p6, v2, v0, v1}, Lcom/opencsv/bean/OpencsvUtils;->compilePatternAtLeastOneGroup(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->capture:Ljava/util/regex/Pattern;

    .line 76
    iput-object p7, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->writeFormat:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    invoke-static {p7, v0, v1}, Lcom/opencsv/bean/OpencsvUtils;->verifyFormatString(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/opencsv/bean/BeanFieldSingleValue;, "Lcom/opencsv/bean/BeanFieldSingleValue<TT;TI;>;"
    move-object v0, p1

    .line 90
    .local v0, "convertValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->capture:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 92
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_0
    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v1, v0}, Lcom/opencsv/bean/CsvConverter;->convertToRead(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 100
    :cond_1
    new-instance v1, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "no.converter.specified"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/opencsv/bean/BeanFieldSingleValue;, "Lcom/opencsv/bean/BeanFieldSingleValue<TT;TI;>;"
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/CsvConverter;->convertToWrite(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->writeFormat:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->writeFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    return-object v0

    .line 118
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "no.converter.specified"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
