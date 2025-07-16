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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    .line 41
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    const/16 v0, 0x22

    .line 42
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    .line 43
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    const-string v0, "\n"

    .line 44
    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    const/4 v1, 0x1

    .line 48
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

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    .line 41
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    const/16 v0, 0x22

    .line 42
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    .line 43
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    const-string v0, "\n"

    .line 44
    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    const/4 v1, 0x1

    .line 48
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

    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/bean/StatefulBeanToCsv;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/StatefulBeanToCsv<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 220
    iget-object v1, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 221
    new-instance v1, Lcom/opencsv/bean/StatefulBeanToCsv;

    iget-char v3, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    iget-object v4, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    iget-object v5, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-char v6, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    iget-char v7, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    iget-boolean v8, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    iget-object v9, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->writer:Ljava/io/Writer;

    iget-boolean v10, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    iget-object v11, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/opencsv/bean/StatefulBeanToCsv;-><init>(CLjava/lang/String;Lcom/opencsv/bean/MappingStrategy;CCZLjava/io/Writer;ZLorg/apache/commons/collections4/MultiValuedMap;)V

    goto :goto_0

    .line 225
    :cond_0
    new-instance v1, Lcom/opencsv/bean/StatefulBeanToCsv;

    iget-object v13, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-boolean v14, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    iget-boolean v15, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    iget-object v2, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->csvWriter:Lcom/opencsv/ICSVWriter;

    iget-object v3, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    move-object v12, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lcom/opencsv/bean/StatefulBeanToCsv;-><init>(Lcom/opencsv/bean/MappingStrategy;ZZLcom/opencsv/ICSVWriter;Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 229
    :goto_0
    iget-boolean v2, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    invoke-virtual {v1, v2}, Lcom/opencsv/bean/StatefulBeanToCsv;->setOrderedResults(Z)V

    .line 230
    iget-object v2, v0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/opencsv/bean/StatefulBeanToCsv;->setErrorLocale(Ljava/util/Locale;)V

    return-object v1
.end method

.method public withApplyQuotesToAll(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 183
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->applyQuotesToAll:Z

    return-object p0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 1
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
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withEscapechar(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 120
    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    return-object p0
.end method

.method public withIgnoreField(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 1
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

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "opencsv"

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    invoke-static {p2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "ignore.field.inconsistent"

    .line 208
    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withLineEnd(Ljava/lang/String;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
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
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-object p0
.end method

.method public withOrderedResults(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 156
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    return-object p0
.end method

.method public withQuotechar(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    return-object p0
.end method

.method public withThrowExceptions(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 141
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    return-object p0
.end method
