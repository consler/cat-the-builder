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

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

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
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
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
    invoke-direct {p0, p2}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

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
