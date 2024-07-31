.class public Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;
.super Ljava/lang/Object;
.source "RowMustHaveSameNumberOfColumnsAsFirstRowValidator.java"

# interfaces
.implements Lcom/opencsv/validators/RowValidator;


# static fields
.field private static final NO_ROWS:I


# instance fields
.field private numRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->numRows:I

    .line 28
    return-void
.end method

.method private firstRowNotSetYet()Z
    .locals 1

    .line 57
    iget v0, p0, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->numRows:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isValid([Ljava/lang/String;)Z
    .locals 3
    .param p1, "row"    # [Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->firstRowNotSetYet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    array-length v1, p1

    iput v1, p0, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->numRows:I

    .line 39
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->numRows:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 33
    :cond_3
    :goto_0
    return v0
.end method

.method public validate([Ljava/lang/String;)V
    .locals 4
    .param p1, "row"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->isValid([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 45
    invoke-direct {p0}, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->firstRowNotSetYet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/opencsv/exceptions/CsvValidationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/opencsv/validators/RowMustHaveSameNumberOfColumnsAsFirstRowValidator;->numRows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Row was expected to have %d elements but had %d instead"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    :goto_0
    new-instance v0, Lcom/opencsv/exceptions/CsvValidationException;

    const-string v1, "Row should not be empty or null"

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    new-instance v0, Lcom/opencsv/exceptions/CsvValidationException;

    const-string v1, "First row should not be empty or null"

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3
    return-void
.end method
