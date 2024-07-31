.class public Lcom/koushikdutta/async/http/body/FilePart;
.super Lcom/koushikdutta/async/http/body/StreamPart;
.source "FilePart.java"


# instance fields
.field file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 15
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    new-instance v2, Lcom/koushikdutta/async/http/body/FilePart$1;

    invoke-direct {v2, p2}, Lcom/koushikdutta/async/http/body/FilePart$1;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/body/StreamPart;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 23
    iput-object p2, p0, Lcom/koushikdutta/async/http/body/FilePart;->file:Ljava/io/File;

    .line 24
    return-void
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/FilePart;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
