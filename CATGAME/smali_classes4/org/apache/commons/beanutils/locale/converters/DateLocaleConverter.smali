.class public Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;
.super Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;
.source "DateLocaleConverter.java"


# static fields
.field private static final DEFAULT_PATTERN_CHARS:Ljava/lang/String;


# instance fields
.field isLenient:Z

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->initDefaultChars()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->DEFAULT_PATTERN_CHARS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "pattern"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "locPattern"    # Z

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 49
    const-class v0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Z)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "locPattern"    # Z

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "locPattern"    # Z

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "locPattern"    # Z

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 49
    const-class v0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "locPattern"    # Z

    .line 110
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "locPattern"    # Z

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    .line 86
    return-void
.end method

.method private convertLocalizedPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "localizedPattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x0

    return-object v0

    .line 318
    :cond_0
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 319
    .local v0, "localizedSymbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "localChars":Ljava/lang/String;
    sget-object v2, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->DEFAULT_PATTERN_CHARS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    return-object p1

    .line 326
    :cond_1
    const/4 v2, 0x0

    .line 328
    .local v2, "convertedPattern":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->DEFAULT_PATTERN_CHARS:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v3

    .line 332
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converting pattern \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 334
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method private convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "fromChars"    # Ljava/lang/String;
    .param p3, "toChars"    # Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v0, "converted":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 345
    .local v1, "quoted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 346
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 347
    .local v3, "thisChar":C
    const/16 v4, 0x27

    if-eqz v1, :cond_0

    .line 348
    if-ne v3, v4, :cond_5

    .line 349
    const/4 v1, 0x0

    goto :goto_1

    .line 352
    :cond_0
    if-ne v3, v4, :cond_1

    .line 353
    const/4 v1, 0x1

    goto :goto_1

    .line 354
    :cond_1
    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7a

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-lt v3, v4, :cond_5

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_5

    .line 356
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 357
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 361
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 358
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal pattern character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 364
    .end local v4    # "index":I
    :cond_5
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    .end local v3    # "thisChar":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "i":I
    :cond_6
    if-nez v1, :cond_7

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 368
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unfinished quote in pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static initDefaultChars()Ljava/lang/String;
    .locals 2

    .line 380
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 381
    .local v0, "defaultSymbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public isLenient()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    return v0
.end method

.method protected parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 265
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 266
    return-object p1

    .line 270
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 271
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 274
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locPattern:Z

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->convertLocalizedPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 279
    :cond_2
    if-nez p2, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 281
    .local v0, "formatter":Ljava/text/DateFormat;
    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 285
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 286
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Ljava/text/DateFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v3

    .line 288
    .local v3, "parsedValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_5

    .line 292
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 297
    return-object v3

    .line 293
    :cond_4
    new-instance v4, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' contains unparsed characters from position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 289
    :cond_5
    new-instance v4, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing date \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' at position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 244
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    .line 245
    return-void
.end method
