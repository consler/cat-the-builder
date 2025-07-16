.class public Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
.super Lcom/opencsv/exceptions/CsvException;
.source "CsvDataTypeMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final destinationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final transient sourceObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    .line 37
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    .line 78
    iput-object p2, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getDestinationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->destinationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSourceObject()Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->sourceObject:Ljava/lang/Object;

    return-object v0
.end method
