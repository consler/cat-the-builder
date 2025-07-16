.class public Lcom/opencsv/CSVReaderHeaderAwareBuilder;
.super Lcom/opencsv/CSVReaderBuilder;
.source "CSVReaderHeaderAwareBuilder.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/opencsv/CSVReader;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->build()Lcom/opencsv/CSVReaderHeaderAware;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/opencsv/CSVReaderHeaderAware;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->getOrCreateCsvParser()Lcom/opencsv/ICSVParser;

    move-result-object v3

    .line 27
    :try_start_0
    new-instance v10, Lcom/opencsv/CSVReaderHeaderAware;

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->getReader()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->getSkipLines()I

    move-result v2

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->keepCarriageReturn()Z

    move-result v4

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->isVerifyReader()Z

    move-result v5

    .line 28
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->getMultilineLimit()I

    move-result v6

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->getErrorLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->getLineValidatorAggregator()Lcom/opencsv/validators/LineValidatorAggregator;

    move-result-object v8

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAwareBuilder;->getRowValidatorAggregator()Lcom/opencsv/validators/RowValidatorAggregator;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/opencsv/CSVReaderHeaderAware;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize CSVReaderHeaderAware"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
