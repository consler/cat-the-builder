.class public Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
.super Ljava/lang/Object;
.source "StatefulBeanToCsvBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private applyQuotesToAll:Z

.field private final csvWriter:Lcom/opencsv/ICSVWriter;

.field private errorLocale:Ljava/util/Locale;

.field private escapechar:C

.field private final ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private lineEnd:Ljava/lang/String;

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private orderedResults:Z

.field private quotechar:C

.field private separator:C

.field private throwExceptions:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lcom/opencsv/ICSVWriter;)V
    .locals 3
    .param p1, "icsvWriter"    # Lcom/opencsv/ICSVWriter;

    .line 72
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    .line 42
    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    .line 43
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    .line 44
    const-string v0, "\n"

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    .line 49
    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    .line 51
    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    .line 52
    new-instance v1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    .line 73
    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->writer:Ljava/io/Writer;

    .line 74
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->csvWriter:Lcom/opencsv/ICSVWriter;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;

    .line 59
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    .line 42
    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    .line 43
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    .line 44
    const-string v0, "\n"

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    .line 49
    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    .line 51
    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    .line 52
    new-instance v1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    .line 60
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->writer:Ljava/io/Writer;

    .line 61
    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->csvWriter:Lcom/opencsv/ICSVWriter;

    .line 62
    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/bean/StatefulBeanToCsv;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/StatefulBeanToCsv<",
            "TT;>;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iget-object v7, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->writer:Ljava/io/Writer;

    if-eqz v7, :cond_0

    .line 221
    new-instance v10, Lcom/opencsv/bean/StatefulBeanToCsv;

    iget-char v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-char v4, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    iget-char v5, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    iget-boolean v6, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    iget-boolean v8, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    iget-object v9, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/opencsv/bean/StatefulBeanToCsv;-><init>(CLjava/lang/String;Lcom/opencsv/bean/MappingStrategy;CCZLjava/io/Writer;ZLorg/apache/commons/collections4/MultiValuedMap;)V

    .local v0, "sbtcsv":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    goto :goto_0

    .line 225
    .end local v0    # "sbtcsv":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    :cond_0
    new-instance v0, Lcom/opencsv/bean/StatefulBeanToCsv;

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-boolean v3, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    iget-boolean v4, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->csvWriter:Lcom/opencsv/ICSVWriter;

    iget-object v6, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/opencsv/bean/StatefulBeanToCsv;-><init>(Lcom/opencsv/bean/MappingStrategy;ZZLcom/opencsv/ICSVWriter;Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 229
    .restart local v0    # "sbtcsv":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    :goto_0
    iget-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/StatefulBeanToCsv;->setOrderedResults(Z)V

    .line 230
    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/StatefulBeanToCsv;->setErrorLocale(Ljava/util/Locale;)V

    .line 231
    return-object v0
.end method

.method public withApplyQuotesToAll(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .param p1, "applyQuotesToAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    .line 184
    return-object p0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    .line 170
    return-object p0
.end method

.method public withEscapechar(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .param p1, "escapechar"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    .line 121
    return-object p0
.end method

.method public withIgnoreField(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 3
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    return-object p0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 208
    const-string v2, "ignore.field.inconsistent"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withLineEnd(Ljava/lang/String;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .param p1, "lineEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public withMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    .local p1, "mappingStrategy":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 91
    return-object p0
.end method

.method public withOrderedResults(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .param p1, "orderedResults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    .line 157
    return-object p0
.end method

.method public withQuotechar(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .param p1, "quotechar"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    .line 111
    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    .line 101
    return-object p0
.end method

.method public withThrowExceptions(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .param p1, "throwExceptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsvBuilder;, "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    .line 142
    return-object p0
.end method
