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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/opencsv/validators/RowFunctionValidator;->testFunction:Ljava/util/function/Function;

    .line 66
    iput-object p2, p0, Lcom/opencsv/validators/RowFunctionValidator;->failureMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid([Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 71
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/opencsv/validators/RowFunctionValidator;->testFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public validate([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lcom/opencsv/validators/RowFunctionValidator;->isValid([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p1, Lcom/opencsv/exceptions/CsvValidationException;

    iget-object v0, p0, Lcom/opencsv/validators/RowFunctionValidator;->failureMessage:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
