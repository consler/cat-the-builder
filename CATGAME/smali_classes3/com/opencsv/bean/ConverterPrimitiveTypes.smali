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
    .locals 5
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

    .line 86
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opencsv/bean/AbstractCsvConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 87
    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 89
    invoke-virtual {v0, v1, v2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(ZZI)V

    .line 90
    iput-object v3, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 94
    iget-object v4, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    .line 95
    iput-object v3, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 99
    invoke-virtual {v0, v1, v2, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(ZZI)V

    .line 100
    iput-object v3, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    goto :goto_1

    .line 103
    :cond_1
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 104
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    .line 105
    iput-object v3, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 107
    :goto_1
    return-void
.end method


# virtual methods
.method public convertToRead(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "o":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    monitor-enter v1
    :try_end_0
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 119
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "o":Ljava/lang/Object;
    .end local p1    # "value":Ljava/lang/String;
    :try_start_2
    throw v2

    .line 122
    .restart local v0    # "o":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    monitor-enter v1
    :try_end_2
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    :try_start_3
    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->readLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 124
    monitor-exit v1

    .line 133
    :goto_0
    nop

    .line 135
    :cond_2
    return-object v0

    .line 124
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "o":Ljava/lang/Object;
    .end local p1    # "value":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    .restart local v0    # "o":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lorg/apache/commons/beanutils/ConversionException;
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    const-string v4, "opencsv"

    iget-object v5, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->errorLocale:Ljava/util/Locale;

    .line 129
    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    const-string v5, "conversion.impossible"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->type:Ljava/lang/Class;

    .line 130
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 128
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 131
    .local v2, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 132
    throw v2
.end method

.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    monitor-enter v1
    :try_end_0
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeConverter:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-virtual {v2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 158
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "result":Ljava/lang/String;
    .end local p1    # "value":Ljava/lang/Object;
    :try_start_2
    throw v2

    .line 161
    .restart local v0    # "result":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    monitor-enter v1
    :try_end_2
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :try_start_3
    iget-object v2, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->writeLocaleConverter:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-virtual {v2, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 163
    monitor-exit v1

    .line 171
    :goto_0
    goto :goto_1

    .line 163
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "result":Ljava/lang/String;
    .end local p1    # "value":Ljava/lang/Object;
    :try_start_4
    throw v2
    :try_end_4
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_4 .. :try_end_4} :catch_0

    .line 166
    .restart local v0    # "result":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Lorg/apache/commons/beanutils/ConversionException;
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    const-string v3, "opencsv"

    iget-object v4, p0, Lcom/opencsv/bean/ConverterPrimitiveTypes;->errorLocale:Ljava/util/Locale;

    .line 168
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "field.not.primitive"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 170
    throw v2

    .line 173
    .end local v1    # "e":Lorg/apache/commons/beanutils/ConversionException;
    .end local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_1
    :goto_1
    return-object v0
.end method
