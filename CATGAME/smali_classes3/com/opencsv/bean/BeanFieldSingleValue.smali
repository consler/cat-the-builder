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
    .locals 0
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
    invoke-direct/range {p0 .. p5}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;)V

    .line 74
    iget-object p1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    const/4 p2, 0x0

    const-class p3, Lcom/opencsv/bean/BeanFieldSingleValue;

    invoke-static {p6, p2, p3, p1}, Lcom/opencsv/bean/OpencsvUtils;->compilePatternAtLeastOneGroup(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->capture:Ljava/util/regex/Pattern;

    .line 76
    iput-object p7, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->writeFormat:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    invoke-static {p7, p3, p1}, Lcom/opencsv/bean/OpencsvUtils;->verifyFormatString(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->capture:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/CsvConverter;->convertToRead(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string v0, "opencsv"

    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "no.converter.specified"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/CsvConverter;->convertToWrite(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->writeFormat:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->writeFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    .line 118
    :cond_1
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string v0, "opencsv"

    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldSingleValue;->errorLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "no.converter.specified"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
