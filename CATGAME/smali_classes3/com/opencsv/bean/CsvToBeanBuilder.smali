.class public Lcom/opencsv/bean/CsvToBeanBuilder;
.super Ljava/lang/Object;
.source "CsvToBeanBuilder.java"


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
.field private final csvReader:Lcom/opencsv/CSVReader;

.field private errorLocale:Ljava/util/Locale;

.field private escapeChar:Ljava/lang/Character;

.field private filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

.field private ignoreQuotations:Ljava/lang/Boolean;

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

.field private keepCR:Z

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private multilineLimit:Ljava/lang/Integer;

.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private orderedResults:Z

.field private quoteChar:Ljava/lang/Character;

.field private final reader:Ljava/io/Reader;

.field private separator:Ljava/lang/Character;

.field private skipLines:Ljava/lang/Integer;

.field private strictQuotes:Ljava/lang/Boolean;

.field private throwExceptions:Z

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final verifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opencsv/bean/BeanVerifier<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private verifyReader:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/opencsv/CSVReader;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 72
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    .line 78
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 84
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    .line 90
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    .line 93
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    .line 96
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    .line 99
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    .line 102
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    .line 105
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    .line 108
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    .line 111
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    .line 114
    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    .line 120
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifiers:Ljava/util/List;

    .line 123
    new-instance v1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    if-eqz p1, :cond_0

    .line 152
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->reader:Ljava/io/Reader;

    .line 153
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->csvReader:Lcom/opencsv/CSVReader;

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "opencsv"

    .line 149
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "reader.null"

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 72
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    .line 78
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 84
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    .line 90
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    .line 93
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    .line 96
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    .line 99
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    .line 102
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    .line 105
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    .line 108
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    .line 111
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    .line 114
    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    .line 120
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifiers:Ljava/util/List;

    .line 123
    new-instance v1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    if-eqz p1, :cond_0

    .line 136
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->reader:Ljava/io/Reader;

    .line 137
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->csvReader:Lcom/opencsv/CSVReader;

    return-void

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "opencsv"

    .line 133
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "reader.null"

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildParser()Lcom/opencsv/CSVParser;
    .locals 2

    .line 209
    new-instance v0, Lcom/opencsv/CSVParserBuilder;

    invoke-direct {v0}, Lcom/opencsv/CSVParserBuilder;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVParserBuilder;

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withSeparator(C)Lcom/opencsv/CSVParserBuilder;

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withQuoteChar(C)Lcom/opencsv/CSVParserBuilder;

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    if-eqz v1, :cond_3

    .line 220
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withEscapeChar(C)Lcom/opencsv/CSVParserBuilder;

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 223
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withStrictQuotes(Z)Lcom/opencsv/CSVParserBuilder;

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withIgnoreLeadingWhiteSpace(Z)Lcom/opencsv/CSVParserBuilder;

    .line 228
    :cond_5
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 229
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withIgnoreQuotations(Z)Lcom/opencsv/CSVParserBuilder;

    .line 231
    :cond_6
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVParserBuilder;

    .line 233
    invoke-virtual {v0}, Lcom/opencsv/CSVParserBuilder;->build()Lcom/opencsv/CSVParser;

    move-result-object v0

    return-object v0
.end method

.method private buildReader(Lcom/opencsv/CSVParser;)Lcom/opencsv/CSVReader;
    .locals 2

    .line 243
    new-instance v0, Lcom/opencsv/CSVReaderBuilder;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->reader:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    .line 244
    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withCSVParser(Lcom/opencsv/ICSVParser;)Lcom/opencsv/CSVReaderBuilder;

    .line 245
    iget-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->keepCR:Z

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withKeepCarriageReturn(Z)Lcom/opencsv/CSVReaderBuilder;

    .line 246
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withVerifyReader(Z)Lcom/opencsv/CSVReaderBuilder;

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withSkipLines(I)Lcom/opencsv/CSVReaderBuilder;

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withMultilineLimit(I)Lcom/opencsv/CSVReaderBuilder;

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;

    .line 256
    invoke-virtual {v0}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build()Lcom/opencsv/bean/CsvToBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/CsvToBean<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "opencsv"

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "strategy.type.missing"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    :goto_0
    new-instance v0, Lcom/opencsv/bean/CsvToBean;

    invoke-direct {v0}, Lcom/opencsv/bean/CsvToBean;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->csvReader:Lcom/opencsv/CSVReader;

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    goto :goto_1

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBeanBuilder;->buildParser()Lcom/opencsv/CSVParser;

    move-result-object v1

    .line 176
    invoke-direct {p0, v1}, Lcom/opencsv/bean/CsvToBeanBuilder;->buildReader(Lcom/opencsv/CSVParser;)Lcom/opencsv/CSVReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    .line 180
    :goto_1
    iget-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setThrowExceptions(Z)V

    .line 181
    iget-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setOrderedResults(Z)V

    .line 182
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifiers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setVerifiers(Ljava/util/List;)V

    .line 188
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    if-nez v1, :cond_4

    .line 189
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/opencsv/bean/OpencsvUtils;->determineMappingStrategy(Ljava/lang/Class;Ljava/util/Locale;)Lcom/opencsv/bean/MappingStrategy;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {v1}, Lorg/apache/commons/collections4/ListValuedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 192
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {v1, v2}, Lcom/opencsv/bean/MappingStrategy;->ignoreFields(Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    .line 198
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setErrorLocale(Ljava/util/Locale;)V

    return-object v0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 440
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withEscapeChar(C)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 357
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    return-object p0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/enums/CSVReaderNullFieldIndicator;",
            ")",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object p0
.end method

.method public withFilter(Lcom/opencsv/bean/CsvToBeanFilter;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            ")",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-object p0
.end method

.method public withIgnoreField(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
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

    .line 478
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoredFields:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0

    .line 482
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "opencsv"

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-static {p2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "ignore.field.inconsistent"

    .line 484
    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withIgnoreLeadingWhiteSpace(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 377
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withIgnoreQuotations(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 387
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withKeepCarriageReturn(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 306
    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->keepCR:Z

    return-object p0
.end method

.method public withMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "+TT;>;)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-object p0
.end method

.method public withMultilineLimit(I)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withOrderedResults(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 427
    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    return-object p0
.end method

.method public withQuoteChar(C)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 347
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 337
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    return-object p0
.end method

.method public withSkipLines(I)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStrictQuotes(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 367
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withThrowExceptions(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 287
    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    return-object p0
.end method

.method public withType(Ljava/lang/Class;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public withVerifier(Lcom/opencsv/bean/BeanVerifier;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/BeanVerifier<",
            "TT;>;)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public withVerifyReader(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    return-object p0
.end method
