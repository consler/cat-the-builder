.class public Lcom/opencsv/exceptions/CsvRecursionException;
.super Lcom/opencsv/exceptions/CsvRuntimeException;
.source "CsvRecursionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final offendingType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/opencsv/exceptions/CsvRecursionException;->offendingType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getOffendingType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvRecursionException;->offendingType:Ljava/lang/Class;

    return-object v0
.end method
