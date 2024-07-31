.class public Lcom/opencsv/validators/RowValidatorAggregator;
.super Ljava/lang/Object;
.source "RowValidatorAggregator.java"


# static fields
.field private static final CAPACITY:I = 0x100


# instance fields
.field private validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opencsv/validators/RowValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/validators/RowValidatorAggregator;->validators:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public addValidator(Lcom/opencsv/validators/RowValidator;)V
    .locals 1
    .param p1, "validator"    # Lcom/opencsv/validators/RowValidator;

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/opencsv/validators/RowValidatorAggregator;->validators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public isValid([Ljava/lang/String;)Z
    .locals 3
    .param p1, "row"    # [Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/opencsv/validators/RowValidatorAggregator;->validators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/validators/RowValidator;

    .line 45
    .local v1, "validator":Lcom/opencsv/validators/RowValidator;
    invoke-interface {v1, p1}, Lcom/opencsv/validators/RowValidator;->isValid([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    .end local v1    # "validator":Lcom/opencsv/validators/RowValidator;
    :cond_0
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public validate([Ljava/lang/String;)V
    .locals 5
    .param p1, "row"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v0, "combinedExceptionMessage":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/opencsv/validators/RowValidatorAggregator;->validators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/validators/RowValidator;

    .line 64
    .local v2, "validator":Lcom/opencsv/validators/RowValidator;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/opencsv/validators/RowValidator;->validate([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 65
    :catch_0
    move-exception v3

    .line 66
    .local v3, "ex":Lcom/opencsv/exceptions/CsvValidationException;
    invoke-virtual {v3}, Lcom/opencsv/exceptions/CsvValidationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .end local v2    # "validator":Lcom/opencsv/validators/RowValidator;
    .end local v3    # "ex":Lcom/opencsv/exceptions/CsvValidationException;
    :goto_1
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 73
    return-void

    .line 71
    :cond_1
    new-instance v1, Lcom/opencsv/exceptions/CsvValidationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
