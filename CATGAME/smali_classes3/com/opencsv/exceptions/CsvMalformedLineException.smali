.class public Lcom/opencsv/exceptions/CsvMalformedLineException;
.super Ljava/io/IOException;
.source "CsvMalformedLineException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private context:Ljava/lang/String;

.field private lineNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # J
    .param p4, "context"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    iput-wide p2, p0, Lcom/opencsv/exceptions/CsvMalformedLineException;->lineNumber:J

    .line 59
    iput-object p4, p0, Lcom/opencsv/exceptions/CsvMalformedLineException;->context:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvMalformedLineException;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/opencsv/exceptions/CsvMalformedLineException;->lineNumber:J

    return-wide v0
.end method
