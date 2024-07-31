.class public Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;
.super Ljava/io/IOException;
.source "CsvMultilineLimitBrokenException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private context:Ljava/lang/String;

.field private multilineLimit:I

.field private row:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "row"    # J
    .param p4, "context"    # Ljava/lang/String;
    .param p5, "multilineLimit"    # I

    .line 64
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    iput-wide p2, p0, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;->row:J

    .line 66
    iput-object p4, p0, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;->context:Ljava/lang/String;

    .line 67
    iput p5, p0, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;->multilineLimit:I

    .line 68
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getMultilineLimit()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;->multilineLimit:I

    return v0
.end method

.method public getRow()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;->row:J

    return-wide v0
.end method
