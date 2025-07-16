.class public Lcom/opencsv/bean/ConverterPrimitiveTypes;
.super Lcom/opencsv/bean/AbstractCsvConverter;
.source "ConverterPrimitiveTypes.java"


# instance fields
.field protected final readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

.field protected final readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

.field protected final writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

.field protected final writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;


# direct methods
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

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opencsv/bean/AbstractCsvConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 87
    iget-object p1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->locale:Ljava/util/Locale;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 89
    invoke-virtual {p1, p2, p3, p3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(ZZI)V

    .line 90
    iput-object p4, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 94
    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    .line 95
    iput-object p4, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocale:Ljava/util/Locale;

    if-nez p1, :cond_1

    .line 98
    new-instance p1, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 99
    invoke-virtual {p1, p2, p3, p3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(ZZI)V

    .line 100
    iput-object p4, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    goto :goto_1

    .line 103
    :cond_1
    new-instance p1, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 104
    iget-object p2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    .line 105
    iput-object p4, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    :goto_1
    return-void
.end method


# virtual methods
.method public convertToRead(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_2

    .line 116
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    if-eqz v0, :cond_2

    .line 117
    monitor-enter v0
    :try_end_0
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    monitor-enter v0
    :try_end_2
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    monitor-exit v0

    :goto_1
    move-object p1, v1

    :goto_2
    return-object p1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    const-string v3, "opencsv"

    iget-object v4, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->errorLocale:Ljava/util/Locale;

    .line 129
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "conversion.impossible"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    .line 130
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 128
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 132
    throw v1
.end method

.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    if-eqz v0, :cond_0

    .line 156
    monitor-enter v0
    :try_end_0
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-virtual {v1, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    monitor-enter v0
    :try_end_2
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :try_start_3
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-virtual {v1, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 163
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 167
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    const-string v1, "opencsv"

    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->errorLocale:Ljava/util/Locale;

    .line 168
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "field.not.primitive"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 170
    throw v0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
