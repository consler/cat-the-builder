.class public Lcom/opencsv/ResultSetColumnNameHelperService;
.super Lcom/opencsv/ResultSetHelperService;
.source "ResultSetColumnNameHelperService.java"

# interfaces
.implements Lcom/opencsv/ResultSetHelper;


# instance fields
.field private columnHeaders:[Ljava/lang/String;

.field private final columnNamePositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private columnNames:[Ljava/lang/String;

.field private errorLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/opencsv/ResultSetHelperService;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method private getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/ResultSetColumnNameHelperService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService$$ExternalSyntheticLambda1;-><init>(Lcom/opencsv/ResultSetColumnNameHelperService;[Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 168
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 169
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private hasInvalidValue([Ljava/lang/String;)Z
    .locals 1

    .line 79
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/opencsv/ResultSetColumnNameHelperService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/opencsv/ResultSetColumnNameHelperService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$hasInvalidValue$0(Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private populateColumnData(Ljava/sql/ResultSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lcom/opencsv/ResultSetHelperService;->getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    .line 101
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 105
    invoke-static {p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 109
    iget-object v6, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "opencsv"

    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "column.nonexistant"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    :cond_0
    const-string v0, "dd-MMM-yyyy"

    const-string v1, "dd-MMM-yyyy HH:mm:ss"

    const/4 v2, 0x0

    .line 125
    invoke-super {p0, p1, v2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    :cond_0
    const-string v0, "dd-MMM-yyyy"

    const-string v1, "dd-MMM-yyyy HH:mm:ss"

    .line 142
    invoke-super {p0, p1, p2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->populateColumnData(Ljava/sql/ResultSet;)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getColumnValueSubset$1$com-opencsv-ResultSetColumnNameHelperService([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    return-object p1
.end method

.method public setColumnNames([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 65
    array-length v0, p2

    array-length v1, p1

    const-string v2, "opencsv"

    if-ne v0, v1, :cond_2

    .line 68
    invoke-direct {p0, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->hasInvalidValue([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-direct {p0, p2}, Lcom/opencsv/ResultSetColumnNameHelperService;->hasInvalidValue([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    .line 75
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "header.name.bogus"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "column.name.bogus"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "column.count.mismatch"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    return-void
.end method
