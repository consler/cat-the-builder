.class public Lorg/catrobat/catroid/web/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "ProgressResponseBody.java"


# static fields
.field public static final TAG_ENDOFFILE:Ljava/lang/String; = "endOfFileReached"

.field public static final TAG_PROGRESS:Ljava/lang/String; = "currentDownloadProgress"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private progressCallback:Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method constructor <init>(Lokhttp3/ResponseBody;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V
    .locals 0
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .param p2, "progressCallback"    # Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

    .line 47
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 49
    iput-object p2, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->progressCallback:Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/web/ProgressResponseBody;J)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/web/ProgressResponseBody;
    .param p1, "x1"    # J

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/web/ProgressResponseBody;->sendUpdateIntent(J)V

    return-void
.end method

.method private sendUpdateIntent(J)V
    .locals 1
    .param p1, "progress"    # J

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->progressCallback:Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;->onProgress(J)V

    .line 92
    return-void
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1, "source"    # Lokio/Source;

    .line 71
    new-instance v0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/web/ProgressResponseBody$1;-><init>(Lorg/catrobat/catroid/web/ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/web/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
