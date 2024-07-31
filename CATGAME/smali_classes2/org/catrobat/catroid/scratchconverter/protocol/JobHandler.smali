.class public Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
.super Ljava/lang/Object;
.source "JobHandler.java"

# interfaces
.implements Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

.field private final job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)V
    .locals 1
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "callback"    # Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 57
    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 58
    return-void
.end method

.method private handleJobAlreadyRunningMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;)V
    .locals 5
    .param p1, "jobAlreadyRunningMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;

    .line 169
    invoke-virtual {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 173
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->getJobID()J

    move-result-wide v0

    .line 174
    .local v0, "jobID":J
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->getJobTitle()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "jobTitle":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->getJobImageURL()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "jobImageURL":Ljava/lang/String;
    new-instance v4, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobRunningMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;)V

    .line 177
    return-void
.end method

.method private handleJobFailedMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;)V
    .locals 5
    .param p1, "jobFailedMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;

    .line 223
    invoke-virtual {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 224
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 226
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 227
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    new-instance v2, Lorg/catrobat/catroid/scratchconverter/ClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job failed - Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/scratchconverter/ClientException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionFailure(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    .line 228
    return-void
.end method

.method private handleJobFinishedMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;)V
    .locals 4
    .param p1, "jobFinishedMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;

    .line 213
    invoke-virtual {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 216
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 217
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadURL(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->getDownloadURL()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->getCachedDate()Ljava/util/Date;

    move-result-object v3

    .line 218
    invoke-interface {v0, v1, p0, v2, v3}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;Ljava/util/Date;)V

    .line 220
    return-void
.end method

.method private handleJobOutputMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;)V
    .locals 5
    .param p1, "jobOutputMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;

    .line 202
    invoke-virtual {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 203
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 205
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;->getLines()[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 207
    .local v3, "line":Ljava/lang/String;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 209
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v1, v2, v0}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private handleJobProgressMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;)V
    .locals 4
    .param p1, "jobProgressMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;

    .line 194
    invoke-virtual {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 195
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 197
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;->getProgress()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setProgress(S)V

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;->getProgress()S

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onJobProgress(Lorg/catrobat/catroid/scratchconverter/protocol/Job;S)V

    .line 199
    return-void
.end method

.method private handleJobReadyMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;)V
    .locals 4
    .param p1, "jobReadyMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;

    .line 161
    invoke-virtual {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 164
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 165
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionReady(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 166
    return-void
.end method

.method private handleJobRunningMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;)V
    .locals 7
    .param p1, "jobRunningMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;

    .line 180
    invoke-virtual {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 181
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;->getJobTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setTitle(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;->getJobImageURL()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "jobImageURL":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 186
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 187
    .local v3, "imageSize":[I
    iget-object v4, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    new-instance v5, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aget v2, v3, v2

    aget v1, v3, v1

    invoke-direct {v5, v6, v2, v1}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setImage(Lcom/google/android/gms/common/images/WebImage;)V

    .line 189
    .end local v3    # "imageSize":[I
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 190
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onConversionStart(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 191
    return-void

    :array_0
    .array-data 4
        0x1e0
        0x168
    .end array-data
.end method


# virtual methods
.method public getJob()Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    return-object v0
.end method

.method public getJobID()J
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "programName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 83
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download finished - Resetting job with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 86
    return-void
.end method

.method public onDownloadProgress(ILjava/lang/String;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 79
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download started - Job ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 75
    return-void
.end method

.method public onJobMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;)V
    .locals 4
    .param p1, "jobMessage"    # Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;->getJobID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 114
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->isInProgress()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 116
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;

    if-eqz v0, :cond_2

    .line 142
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobProgressMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;)V

    .line 143
    return-void

    .line 144
    :cond_2
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;

    if-eqz v0, :cond_3

    .line 145
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobOutputMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;)V

    .line 146
    return-void

    .line 147
    :cond_3
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;

    if-eqz v0, :cond_4

    .line 148
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobFinishedMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;)V

    .line 149
    return-void

    .line 150
    :cond_4
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;

    if-eqz v0, :cond_a

    .line 151
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobFailedMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;)V

    .line 152
    return-void

    .line 134
    :cond_5
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;

    if-eqz v0, :cond_a

    .line 135
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobRunningMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;)V

    .line 136
    return-void

    .line 118
    :cond_6
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;

    if-eqz v0, :cond_7

    .line 119
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobReadyMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;)V

    .line 120
    return-void

    .line 121
    :cond_7
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;

    if-eqz v0, :cond_8

    .line 122
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobAlreadyRunningMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;)V

    .line 123
    return-void

    .line 124
    :cond_8
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;

    if-eqz v0, :cond_9

    .line 125
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobFinishedMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;)V

    .line 126
    return-void

    .line 127
    :cond_9
    instance-of v0, p1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;

    if-eqz v0, :cond_a

    .line 128
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->handleJobFailedMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;)V

    .line 129
    return-void

    .line 157
    :cond_a
    :goto_1
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to handle message of type in current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public onJobScheduled()V
    .locals 4

    .line 65
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting job as scheduled (jobID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;->onJobScheduled(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    .line 68
    return-void
.end method

.method public onUserCanceledConversion()V
    .locals 4

    .line 96
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User canceled conversion - Resetting job with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 98
    return-void
.end method

.method public onUserCanceledDownload(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User canceled download - Resetting job with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->CANCELED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->job:Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V

    .line 93
    return-void
.end method

.method public setCallback(Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 109
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->callback:Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 110
    return-void
.end method
