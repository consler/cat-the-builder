.class public Lcom/opencsv/exceptions/CsvException;
.super Ljava/lang/Exception;
.source "CsvException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private line:[Ljava/lang/String;

.field private lineNumber:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-void
.end method


# virtual methods
.method public getLine()[Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvException;->line:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-wide v0
.end method

.method public setLine([Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvException;->line:[Ljava/lang/String;

    return-void
.end method

.method public setLineNumber(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-void
.end method
