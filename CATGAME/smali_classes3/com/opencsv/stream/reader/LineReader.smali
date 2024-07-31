.class public Lcom/opencsv/stream/reader/LineReader;
.super Ljava/lang/Object;
.source "LineReader.java"


# instance fields
.field private final keepCarriageReturns:Z

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;Z)V
    .locals 0
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "keepCarriageReturns"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/opencsv/stream/reader/LineReader;->reader:Ljava/io/BufferedReader;

    .line 31
    iput-boolean p2, p0, Lcom/opencsv/stream/reader/LineReader;->keepCarriageReturns:Z

    .line 32
    return-void
.end method

.method private readUntilNewline()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/opencsv/stream/reader/LineReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .local v1, "c":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 47
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    iget-object v2, p0, Lcom/opencsv/stream/reader/LineReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v1

    goto :goto_0

    .line 50
    .end local v1    # "c":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Lcom/opencsv/stream/reader/LineReader;->keepCarriageReturns:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/opencsv/stream/reader/LineReader;->readUntilNewline()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/opencsv/stream/reader/LineReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
