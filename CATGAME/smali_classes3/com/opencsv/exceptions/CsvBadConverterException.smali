.class public Lcom/opencsv/exceptions/CsvBadConverterException;
.super Lcom/opencsv/exceptions/CsvRuntimeException;
.source "CsvBadConverterException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final converterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p1, "converterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    .local p1, "converterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    .line 59
    return-void
.end method


# virtual methods
.method public getConverterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-object v0
.end method
