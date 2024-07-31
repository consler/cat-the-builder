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
    .locals 7
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "regexFlags"    # I
    .param p3, "errorLocale"    # Ljava/util/Locale;
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

    .line 163
    .local p2, "callingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "tempPattern":Ljava/util/regex/Pattern;
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 168
    .local v1, "exceptionLocale":Ljava/util/Locale;
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 180
    goto :goto_1

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v3, Lcom/opencsv/exceptions/CsvBadConverterException;

    .line 175
    const-string v4, "opencsv"

    invoke-static {v4, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 177
    const-string v5, "invalid.regex"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    .line 175
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 178
    .local v3, "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v3, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 179
    throw v3

    .line 182
    .end local v2    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v3    # "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    :cond_1
    :goto_1
    return-object v0
.end method

.method static compilePatternAtLeastOneGroup(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;
    .locals 7
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "regexFlags"    # I
    .param p3, "errorLocale"    # Ljava/util/Locale;
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
    .local p2, "callingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, p3}, Lcom/opencsv/bean/OpencsvUtils;->compilePattern(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 123
    .local v0, "tempPattern":Ljava/util/regex/Pattern;
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 127
    .local v1, "exceptionLocale":Ljava/util/Locale;
    :goto_0
    if-eqz v0, :cond_2

    .line 128
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 129
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    new-instance v3, Lcom/opencsv/exceptions/CsvBadConverterException;

    .line 131
    const-string v5, "opencsv"

    invoke-static {v5, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 133
    const-string v6, "regex.without.capture.group"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    .line 131
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v3

    .line 137
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    return-object v0
.end method

.method static determineMappingStrategy(Ljava/lang/Class;Ljava/util/Locale;)Lcom/opencsv/bean/MappingStrategy;
    .locals 2
    .param p1, "errorLocale"    # Ljava/util/Locale;
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
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 70
    .local v0, "positionAnnotationsPresent":Z
    if-eqz v0, :cond_0

    new-instance v1, Lcom/opencsv/bean/ColumnPositionMappingStrategy;

    invoke-direct {v1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;

    invoke-direct {v1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    .line 73
    .local v1, "mappingStrategy":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    :goto_0
    invoke-interface {v1, p1}, Lcom/opencsv/bean/MappingStrategy;->setErrorLocale(Ljava/util/Locale;)V

    .line 74
    invoke-interface {v1, p0}, Lcom/opencsv/bean/MappingStrategy;->setType(Ljava/lang/Class;)V

    .line 75
    return-object v1
.end method

.method static synthetic lambda$determineMappingStrategy$0(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;

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

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 64
    :goto_1
    return v0
.end method

.method public static queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 88
    .local p0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 89
    .local v0, "interrupted":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 96
    :cond_0
    return-void
.end method

.method static verifyFormatString(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 7
    .param p0, "format"    # Ljava/lang/String;
    .param p2, "errorLocale"    # Ljava/util/Locale;
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

    .line 195
    .local p1, "callingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 197
    .local v0, "exceptionLocale":Ljava/util/Locale;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, " "

    aput-object v4, v3, v1

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    nop

    .line 210
    return-void

    .line 201
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/util/IllegalFormatException;
    new-instance v4, Lcom/opencsv/exceptions/CsvBadConverterException;

    .line 204
    const-string v5, "opencsv"

    invoke-static {v5, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 206
    const-string v6, "invalid.one.parameter.format.string"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    .line 204
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p1, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, v4

    .line 207
    .local v1, "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v1, v3}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 208
    throw v1
.end method
