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

    .line 44
    return-void
.end method

.method private getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "realColumnValues"    # [Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$8ps51FtLloBQY8G4OM7bqlgAltw;

    invoke-direct {v1, p0, p1}, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$8ps51FtLloBQY8G4OM7bqlgAltw;-><init>(Lcom/opencsv/ResultSetColumnNameHelperService;[Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 168
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 166
    return-object v0
.end method

.method private hasInvalidValue([Ljava/lang/String;)Z
    .locals 2
    .param p1, "strings"    # [Ljava/lang/String;

    .line 79
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;->INSTANCE:Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$hasInvalidValue$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 79
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private populateColumnData(Ljava/sql/ResultSet;)V
    .locals 9
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lcom/opencsv/ResultSetHelperService;->getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "realColumnNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 100
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    .line 101
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 105
    .local v5, "name":Ljava/lang/String;
    invoke-static {v0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 106
    .local v6, "position":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 109
    iget-object v7, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "position":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "position":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    iget-object v2, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    const-string v4, "opencsv"

    invoke-static {v4, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v4, "column.nonexistant"

    invoke-virtual {v2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "position":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
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
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getColumnValues(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 3
    .param p1, "rs"    # Ljava/sql/ResultSet;
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

    .line 125
    :cond_0
    const/4 v0, 0x0

    const-string v1, "dd-MMM-yyyy"

    const-string v2, "dd-MMM-yyyy HH:mm:ss"

    invoke-super {p0, p1, v0, v1, v2}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "realColumnValues":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "trim"    # Z
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

    .line 142
    :cond_0
    const-string v0, "dd-MMM-yyyy"

    const-string v1, "dd-MMM-yyyy HH:mm:ss"

    invoke-super {p0, p1, p2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "realColumnValues":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "trim"    # Z
    .param p3, "dateFormatString"    # Ljava/lang/String;
    .param p4, "timeFormatString"    # Ljava/lang/String;
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

    move-result-object v0

    .line 162
    .local v0, "realColumnValues":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/opencsv/ResultSetColumnNameHelperService;->getColumnValueSubset([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$getColumnValueSubset$1$ResultSetColumnNameHelperService([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "realColumnValues"    # [Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNamePositionMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public setColumnNames([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "columnHeaders"    # [Ljava/lang/String;

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

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnNames:[Ljava/lang/String;

    .line 75
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->columnHeaders:[Ljava/lang/String;

    .line 76
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "header.name.bogus"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "column.name.bogus"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "column.count.mismatch"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/ResultSetColumnNameHelperService;->errorLocale:Ljava/util/Locale;

    .line 54
    return-void
.end method
