.class public Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;
.super Landroid/os/AsyncTask;
.source "FetchScratchProgramDetailsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lorg/catrobat/catroid/common/ScratchProgramData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private delegate:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;

.field private fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->delegate:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;

    .line 55
    iput-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->doInBackground([Ljava/lang/Long;)Lorg/catrobat/catroid/common/ScratchProgramData;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Lorg/catrobat/catroid/common/ScratchProgramData;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Long;

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "No project ID given!"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 85
    .local v3, "projectID":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Invalid project ID given!"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    :try_start_0
    invoke-virtual {p0, v3, v4}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->fetchProjectData(J)Lorg/catrobat/catroid/common/ScratchProgramData;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "exception":Ljava/io/InterruptedIOException;
    sget-object v1, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->TAG:Ljava/lang/String;

    const-string v2, "Task has been cancelled in the meanwhile!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    return-object v1
.end method

.method public fetchProjectData(J)Lorg/catrobat/catroid/common/ScratchProgramData;
    .locals 9
    .param p1, "projectID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 96
    const/16 v0, 0x3e8

    .line 97
    .local v0, "minTimeout":I
    const/4 v1, 0x2

    .line 101
    .local v1, "maxNumRetries":I
    const/4 v2, 0x0

    .local v2, "attempt":I
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gt v2, v3, :cond_2

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    sget-object v3, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->TAG:Ljava/lang/String;

    const-string v5, "Task has been cancelled in the meanwhile!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v4

    .line 108
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    invoke-interface {v3, p1, p2}, Lorg/catrobat/catroid/web/ScratchDataFetcher;->fetchScratchProgramDetails(J)Lorg/catrobat/catroid/common/ScratchProgramData;

    move-result-object v3
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebScratchProgramException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v4, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/catrobat/catroid/web/WebconnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/catrobat/catroid/web/WebconnectionException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-int/lit8 v4, v2, 0x1

    int-to-double v4, v4

    mul-double/2addr v6, v4

    double-to-int v4, v6

    add-int/lit16 v4, v4, 0x3e8

    .line 127
    .local v4, "delay":I
    sget-object v5, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to fetch scratch project list scheduled in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ms due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Lorg/catrobat/catroid/web/WebconnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    int-to-long v5, v4

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    goto :goto_1

    .line 131
    :catch_1
    move-exception v5

    .line 132
    .local v5, "ex":Ljava/lang/InterruptedException;
    sget-object v6, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v3    # "e":Lorg/catrobat/catroid/web/WebconnectionException;
    .end local v5    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 109
    .end local v4    # "delay":I
    :catch_2
    move-exception v3

    .line 110
    .local v3, "e":Lorg/catrobat/catroid/web/WebScratchProgramException;
    iget-object v5, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->context:Landroid/content/Context;

    const v6, 0x7f120308

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "userErrorMessage":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/catrobat/catroid/web/WebScratchProgramException;->getStatusCode()I

    move-result v7

    const/16 v8, 0x3e9

    if-ne v7, v8, :cond_1

    .line 112
    iget-object v7, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->context:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_1
    move-object v6, v5

    .line 116
    .local v6, "finalUserErrorMessage":Ljava/lang/String;
    new-instance v7, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$1;

    invoke-direct {v7, p0, v6}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$1;-><init>(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-object v4

    .line 136
    .end local v2    # "attempt":I
    .end local v3    # "e":Lorg/catrobat/catroid/web/WebScratchProgramException;
    .end local v5    # "userErrorMessage":Ljava/lang/String;
    .end local v6    # "finalUserErrorMessage":Ljava/lang/String;
    :cond_2
    sget-object v2, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->TAG:Ljava/lang/String;

    const-string v3, "Maximum number of 3 attempts exceeded! Server not reachable?!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v2, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$2;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$2;-><init>(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;)V

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->onPostExecute(Lorg/catrobat/catroid/common/ScratchProgramData;)V

    return-void
.end method

.method protected onPostExecute(Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 1
    .param p1, "programData"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 148
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->delegate:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->delegate:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;->onPostExecute(Lorg/catrobat/catroid/common/ScratchProgramData;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->delegate:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;->onPreExecute()V

    .line 79
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->handler:Landroid/os/Handler;

    .line 60
    return-object p0
.end method

.method public setDelegate(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;)Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;
    .locals 0
    .param p1, "delegate"    # Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->delegate:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;

    .line 65
    return-object p0
.end method

.method public setFetcher(Lorg/catrobat/catroid/web/ScratchDataFetcher;)Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;
    .locals 0
    .param p1, "fetcher"    # Lorg/catrobat/catroid/web/ScratchDataFetcher;

    .line 69
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->fetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    .line 70
    return-object p0
.end method
