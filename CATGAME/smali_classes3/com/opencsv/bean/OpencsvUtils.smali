.class public final Lcom/opencsv/bean/OpencsvUtils;
.super Ljava/lang/Object;
.source "OpencsvUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compilePattern(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 168
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string v1, "opencsv"

    .line 175
    invoke-static {v1, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    const-string v1, "invalid.regex"

    .line 177
    invoke-virtual {p3, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 175
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 179
    throw v0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static compilePatternAtLeastOneGroup(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    .line 122
    invoke-static {p0, p1, p2, p3}, Lcom/opencsv/bean/OpencsvUtils;->compilePattern(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object p1

    if-nez p3, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ""

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string v0, "opencsv"

    .line 131
    invoke-static {v0, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    const-string v0, "regex.without.capture.group"

    .line 133
    invoke-virtual {p3, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 131
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method static determineMappingStrategy(Ljava/lang/Class;Ljava/util/Locale;)Lcom/opencsv/bean/MappingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/OpencsvUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/opencsv/bean/OpencsvUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;

    invoke-direct {v0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;

    invoke-direct {v0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    .line 73
    :goto_0
    invoke-interface {v0, p1}, Lcom/opencsv/bean/MappingStrategy;->setErrorLocale(Ljava/util/Locale;)V

    .line 74
    invoke-interface {v0, p0}, Lcom/opencsv/bean/MappingStrategy;->setType(Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic lambda$determineMappingStrategy$0(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 64
    const-class v0, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/opencsv/bean/CsvCustomBindByPosition;

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;TE;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :catch_0
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static verifyFormatString(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 197
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, " "

    aput-object v3, v2, v0

    .line 198
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v2

    .line 202
    new-instance v3, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string v4, "opencsv"

    .line 204
    invoke-static {v4, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v4, "invalid.one.parameter.format.string"

    .line 206
    invoke-virtual {p2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 204
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p1, p0}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 208
    throw v3
.end method
