.class public Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;
.super Landroid/os/AsyncTask;
.source "SearchScratchProgramsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/catrobat/catroid/common/ScratchSearchResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delegate:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;

.field private fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->delegate:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;

    .line 48
    iput-object v0, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->doInBackground([Ljava/lang/String;)Lorg/catrobat/catroid/common/ScratchSearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/catrobat/catroid/common/ScratchSearchResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Invalid number of parameters!"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    :try_start_0
    array-length v2, p1

    if-lez v2, :cond_1

    aget-object v1, p1, v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->fetchProgramList(Ljava/lang/String;)Lorg/catrobat/catroid/common/ScratchSearchResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/InterruptedIOException;
    sget-object v2, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v0
.end method

.method public fetchProgramList(Ljava/lang/String;)Lorg/catrobat/catroid/common/ScratchSearchResult;
    .locals 8
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 80
    const/16 v0, 0x3e8

    .line 81
    .local v0, "minTimeout":I
    const/4 v1, 0x2

    .line 85
    .local v1, "maxNumRetries":I
    const/4 v2, 0x0

    .local v2, "attempt":I
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gt v2, v3, :cond_2

    .line 86
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    return-object v4

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Lorg/catrobat/catroid/web/ScratchDataFetcher;->scratchSearch(Ljava/lang/String;II)Lorg/catrobat/catroid/common/ScratchSearchResult;

    move-result-object v3

    return-object v3

    .line 93
    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    invoke-interface {v3}, Lorg/catrobat/catroid/web/ScratchDataFetcher;->fetchDefaultScratchPrograms()Lorg/catrobat/catroid/common/ScratchSearchResult;

    move-result-object v3
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v4, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-int/lit8 v4, v2, 0x1

    int-to-double v4, v4

    mul-double/2addr v6, v4

    double-to-int v4, v6

    add-int/lit16 v4, v4, 0x3e8

    .line 98
    .local v4, "delay":I
    int-to-long v5, v4

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    goto :goto_1

    .line 99
    :catch_1
    move-exception v5

    .line 100
    .local v5, "interruptedE":Ljava/lang/InterruptedException;
    sget-object v6, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->TAG:Ljava/lang/String;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v3    # "e":Lorg/catrobat/catroid/web/WebconnectionException;
    .end local v5    # "interruptedE":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "attempt":I
    .end local v4    # "delay":I
    :cond_2
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/catrobat/catroid/common/ScratchSearchResult;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->onPostExecute(Lorg/catrobat/catroid/common/ScratchSearchResult;)V

    return-void
.end method

.method protected onPostExecute(Lorg/catrobat/catroid/common/ScratchSearchResult;)V
    .locals 1
    .param p1, "result"    # Lorg/catrobat/catroid/common/ScratchSearchResult;

    .line 109
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->delegate:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->delegate:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;->onPostExecute(Lorg/catrobat/catroid/common/ScratchSearchResult;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->delegate:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;->onPreExecute()V

    .line 66
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;
    .locals 0
    .param p1, "delegate"    # Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->delegate:Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask$SearchScratchProgramsTaskDelegate;

    .line 52
    return-object p0
.end method

.method public setFetcher(Lorg/catrobat/catroid/web/ScratchDataFetcher;)Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;
    .locals 0
    .param p1, "fetcher"    # Lorg/catrobat/catroid/web/ScratchDataFetcher;

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/SearchScratchProgramsTask;->fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    .line 57
    return-object p0
.end method
