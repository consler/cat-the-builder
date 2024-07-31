.class public Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;
.super Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;
.source "StringLocaleConverter.java"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "pattern"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "locPattern"    # Z

    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 50
    const-class v0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Z)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "locPattern"    # Z

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locPattern"    # Z

    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "locPattern"    # Z

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 50
    const-class v0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "locPattern"    # Z

    .line 103
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "locPattern"    # Z

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    .line 79
    return-void
.end method

.method private getDecimalFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 277
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 280
    .local v0, "numberFormat":Ljava/text/DecimalFormat;
    if-eqz p2, :cond_1

    .line 281
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locPattern:Z

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "No pattern provided, using default."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "result":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/math/BigInteger;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Byte;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_3

    instance-of v1, p1, Ljava/math/BigDecimal;

    if-nez v1, :cond_3

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 252
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 255
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .line 258
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 248
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->getDecimalFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 242
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->getDecimalFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_2
    return-object v0
.end method
