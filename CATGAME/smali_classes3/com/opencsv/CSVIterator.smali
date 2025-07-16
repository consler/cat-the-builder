.class public Lcom/opencsv/CSVIterator;
.super Ljava/lang/Object;
.source "CSVIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private nextLine:[Ljava/lang/String;

.field private final reader:Lcom/opencsv/CSVReader;


# direct methods
.method public constructor <init>(Lcom/opencsv/CSVReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVIterator;->errorLocale:Ljava/util/Locale;

    .line 31
    iput-object p1, p0, Lcom/opencsv/CSVIterator;->reader:Lcom/opencsv/CSVReader;

    .line 32
    invoke-virtual {p1}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/opencsv/CSVIterator;->next()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()[Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/CSVIterator;->reader:Lcom/opencsv/CSVReader;

    invoke-virtual {v1}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 69
    :goto_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 71
    throw v1
.end method

.method public remove()V
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "opencsv"

    iget-object v2, p0, Lcom/opencsv/CSVIterator;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "read.only.iterator"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVIterator;->errorLocale:Ljava/util/Locale;

    return-void
.end method
