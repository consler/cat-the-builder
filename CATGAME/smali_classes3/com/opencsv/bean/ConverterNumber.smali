.class public Lcom/opencsv/bean/ConverterNumber;
.super Lcom/opencsv/bean/AbstractCsvConverter;
.source "ConverterNumber.java"


# instance fields
.field private final readConversionFunction:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final readFormatter:Ljava/text/DecimalFormat;

.field private final writeFormatter:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "writeLocale"    # Ljava/lang/String;
    .param p4, "errorLocale"    # Ljava/util/Locale;
    .param p5, "readFormat"    # Ljava/lang/String;
    .param p6, "writeFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    .line 61
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opencsv/bean/AbstractCsvConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 64
    const-class v0, Ljava/lang/Number;

    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    .line 66
    invoke-static {v1}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->locale:Ljava/util/Locale;

    invoke-direct {p0, p5, v0}, Lcom/opencsv/bean/ConverterNumber;->createDecimalFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    .line 81
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/math/BigInteger;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_2

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    goto/16 :goto_6

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    goto :goto_5

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    goto :goto_4

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    goto :goto_3

    .line 98
    :cond_6
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 101
    :cond_7
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    goto :goto_1

    .line 104
    :cond_8
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_9

    .line 105
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 112
    :cond_9
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 102
    :cond_a
    :goto_1
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$tZDvuzFKJafxJQ_BbUprtcaCdRs;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$tZDvuzFKJafxJQ_BbUprtcaCdRs;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 99
    :cond_b
    :goto_2
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$Wb9CdnVO6d66PxoNBBpDZeR9_Pg;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 96
    :cond_c
    :goto_3
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 93
    :cond_d
    :goto_4
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$abDvuRDlKfuIdB-f2C9XLu-C9VE;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$abDvuRDlKfuIdB-f2C9XLu-C9VE;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 90
    :cond_e
    :goto_5
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 87
    :cond_f
    :goto_6
    sget-object v0, Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    .line 116
    :goto_7
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->writeLocale:Ljava/util/Locale;

    invoke-direct {p0, p6, v0}, Lcom/opencsv/bean/ConverterNumber;->createDecimalFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->writeFormatter:Ljava/text/DecimalFormat;

    .line 117
    return-void

    .line 68
    :cond_10
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-class v1, Lcom/opencsv/bean/ConverterNumber;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 70
    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 73
    const-string v3, "csvnumber.not.number"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method private createDecimalFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 120
    const-class v0, Lcom/opencsv/bean/ConverterNumber;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 121
    .local v1, "nf":Ljava/text/NumberFormat;
    instance-of v2, v1, Ljava/text/DecimalFormat;

    const-string v3, "opencsv"

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    check-cast v2, Ljava/text/DecimalFormat;

    .line 132
    .local v2, "formatter":Ljava/text/DecimalFormat;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 145
    return-object v2

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v6, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 136
    invoke-static {v3, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 139
    const-string v6, "invalid.number.pattern"

    invoke-virtual {v3, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 136
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v5

    .line 141
    .local v0, "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v0, v4}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v0

    .line 122
    .end local v0    # "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    .end local v2    # "formatter":Ljava/text/DecimalFormat;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v2, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v4, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 124
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 127
    const-string v4, "numberformat.not.decimalformat"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$new$0(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p0, "n"    # Ljava/lang/Number;

    .line 105
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0
    .param p0, "n"    # Ljava/lang/Number;

    .line 112
    return-object p0
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

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "n":Ljava/lang/Number;
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    monitor-enter v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    iget-object v2, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p1}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    .line 155
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    nop

    .line 168
    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "n":Ljava/lang/Number;
    .end local p1    # "value":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    .restart local v0    # "n":Ljava/lang/Number;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-string v4, "opencsv"

    iget-object v5, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 160
    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    const-string v5, "unparsable.number"

    .line 163
    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 160
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 164
    .local v2, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 165
    throw v2

    .line 170
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->writeFormatter:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 181
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->writeFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 181
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 182
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
