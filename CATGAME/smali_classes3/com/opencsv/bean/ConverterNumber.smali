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
.method public static synthetic $r8$lambda$L0IGnMceKp-WEbdd5TcLMH_Nn-U(Ljava/lang/Number;)B
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MPiXOoIwfbjGurx9P-xwcFCeWyg(Ljava/lang/Number;)S
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ph0rGnhqOChOQQENtIA7hZ8fIdA(Ljava/lang/Number;)F
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p-1_RTMQUlKY6kcBZPol546W2qg(Ljava/lang/Number;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$qfHJlXtSrfRIyn12GwTBG6hYZzg(Ljava/lang/Number;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$y0wpLcsNfP0wlopHM2ek-H5h7KI(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opencsv/bean/AbstractCsvConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 64
    const-class p1, Ljava/lang/Number;

    iget-object p2, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    .line 66
    invoke-static {p2}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    .line 64
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 77
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->locale:Ljava/util/Locale;

    invoke-direct {p0, p5, p1}, Lcom/opencsv/bean/ConverterNumber;->createDecimalFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    .line 81
    iget-object p2, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p3, Ljava/math/BigInteger;

    if-eq p2, p3, :cond_1

    iget-object p2, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p3, Ljava/math/BigDecimal;

    if-ne p2, p3, :cond_2

    :cond_1
    const/4 p2, 0x1

    .line 82
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p2, Ljava/lang/Byte;

    if-eq p1, p2, :cond_f

    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_3

    goto/16 :goto_6

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p2, Ljava/lang/Short;

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_4

    goto/16 :goto_5

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p2, Ljava/lang/Integer;

    if-eq p1, p2, :cond_d

    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_5

    goto :goto_4

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p2, Ljava/lang/Long;

    if-eq p1, p2, :cond_c

    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_6

    goto :goto_3

    .line 98
    :cond_6
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p2, Ljava/lang/Float;

    if-eq p1, p2, :cond_b

    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_7

    goto :goto_2

    .line 101
    :cond_7
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p2, Ljava/lang/Double;

    if-eq p1, p2, :cond_a

    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_8

    goto :goto_1

    .line 104
    :cond_8
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-class p2, Ljava/math/BigInteger;

    if-ne p1, p2, :cond_9

    .line 105
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda6;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 112
    :cond_9
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda7;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 102
    :cond_a
    :goto_1
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda5;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 99
    :cond_b
    :goto_2
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda4;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 96
    :cond_c
    :goto_3
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda3;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 93
    :cond_d
    :goto_4
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda2;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 90
    :cond_e
    :goto_5
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    goto :goto_7

    .line 87
    :cond_f
    :goto_6
    new-instance p1, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/opencsv/bean/ConverterNumber$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    .line 116
    :goto_7
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->writeLocale:Ljava/util/Locale;

    invoke-direct {p0, p6, p1}, Lcom/opencsv/bean/ConverterNumber;->createDecimalFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->writeFormatter:Ljava/text/DecimalFormat;

    return-void

    .line 68
    :cond_10
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string p2, "opencsv"

    iget-object p3, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 70
    invoke-static {p2, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string p3, "csvnumber.not.number"

    .line 73
    invoke-virtual {p2, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/opencsv/bean/ConverterNumber;

    invoke-direct {p1, p3, p2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1
.end method

.method private createDecimalFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;
    .locals 5

    .line 120
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    .line 121
    instance-of v0, p2, Ljava/text/DecimalFormat;

    const-string v1, "opencsv"

    const-class v2, Lcom/opencsv/bean/ConverterNumber;

    if-eqz v0, :cond_0

    .line 129
    check-cast p2, Ljava/text/DecimalFormat;

    .line 132
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 134
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v3, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 136
    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v3, "invalid.number.pattern"

    .line 139
    invoke-virtual {v1, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 136
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p2}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v0

    .line 122
    :cond_0
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object p2, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 124
    invoke-static {v1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "numberformat.not.decimalformat"

    .line 127
    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$new$0(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    .line 105
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$1(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public convertToRead(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    monitor-enter v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    .line 155
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    iget-object p1, p0, Lcom/opencsv/bean/ConverterNumber;->readConversionFunction:Ljava/util/function/UnaryOperator;

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 155
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/ConverterNumber;->type:Ljava/lang/Class;

    const-string v3, "opencsv"

    iget-object v4, p0, Lcom/opencsv/bean/ConverterNumber;->errorLocale:Ljava/util/Locale;

    .line 160
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "unparsable.number"

    .line 163
    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/opencsv/bean/ConverterNumber;->readFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 160
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 165
    throw v1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/opencsv/bean/ConverterNumber;->writeFormatter:Ljava/text/DecimalFormat;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/ConverterNumber;->writeFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    .line 182
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
