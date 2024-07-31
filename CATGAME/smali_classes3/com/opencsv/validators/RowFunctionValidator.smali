.class public Lcom/opencsv/validators/RowFunctionValidator;
.super Ljava/lang/Object;
.source "RowFunctionValidator.java"

# interfaces
.implements Lcom/opencsv/validators/RowValidator;


# instance fields
.field private failureMessage:Ljava/lang/String;

.field private testFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 0
    .param p2, "failureMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    .local p1, "testFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<[Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/opencsv/validators/RowFunctionValidator;->testFunction:Ljava/util/function/Function;

    .line 66
    iput-object p2, p0, Lcom/opencsv/validators/RowFunctionValidator;->failureMessage:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public isValid([Ljava/lang/String;)Z
    .locals 1
    .param p1, "row"    # [Ljava/lang/String;

    .line 71
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/opencsv/validators/RowFunctionValidator;->testFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 72
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public validate([Ljava/lang/String;)V
    .locals 2
    .param p1, "row"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lcom/opencsv/validators/RowFunctionValidator;->isValid([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/opencsv/exceptions/CsvValidationException;

    iget-object v1, p0, Lcom/opencsv/validators/RowFunctionValidator;->failureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
