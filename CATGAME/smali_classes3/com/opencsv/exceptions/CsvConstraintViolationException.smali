.class public Lcom/opencsv/exceptions/CsvConstraintViolationException;
.super Lcom/opencsv/exceptions/CsvException;
.source "CsvConstraintViolationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient sourceObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "sourceObject"    # Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceObject"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p2}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public getSourceObject()Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    return-object v0
.end method
