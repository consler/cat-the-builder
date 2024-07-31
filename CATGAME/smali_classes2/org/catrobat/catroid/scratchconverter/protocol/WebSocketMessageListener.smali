.class public Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;
.super Ljava/lang/Object;
.source "WebSocketMessageListener.java"

# interfaces
.implements Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;
.implements Lcom/koushikdutta/async/http/WebSocket$StringCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private baseMessageHandler:Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;

.field private jobHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->baseMessageHandler:Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->jobHandlers:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private createOrUseExistingJobHandlerForJobIfPossible(Lorg/catrobat/catroid/scratchconverter/protocol/Job;ZLorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    .locals 5
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "force"    # Z
    .param p3, "convertCallback"    # Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->jobHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    .line 133
    .local v0, "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    if-eqz v0, :cond_1

    .line 134
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JobHandler for jobID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez p2, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x0

    return-object v1

    .line 140
    :cond_0
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->setCallback(Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)V

    goto :goto_0

    .line 142
    :cond_1
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new JobHandler for jobID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    invoke-direct {v1, p1, p3}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;-><init>(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)V

    move-object v0, v1

    .line 144
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->jobHandlers:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->getJobID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getNumberOfJobsInProgress()I
    .locals 4

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "numberOfJobsInProgress":I
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->jobHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    .line 123
    .local v2, "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 126
    .end local v2    # "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    return v0
.end method

.method public isJobInProgress(J)Z
    .locals 2
    .param p1, "jobID"    # J

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->jobHandlers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    .line 104
    .local v0, "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    return v1

    .line 107
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->isInProgress()Z

    move-result v1

    return v1
.end method

.method public declared-synchronized onStringAvailable(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    monitor-enter p0

    .line 63
    if-nez p1, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving new message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    :try_start_1
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->CATEGORY:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, "categoryID":I
    invoke-static {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    move-result-object v2

    .line 76
    .local v2, "categoryType":Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$message$Message$CategoryType:[I

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 93
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message of unsupported category-type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local p0    # "this":Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;
    :cond_2
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->DATA:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    .local v3, "jsonData":Lorg/json/JSONObject;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 84
    .local v4, "jobID":J
    iget-object v6, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->jobHandlers:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    .line 85
    .local v6, "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    if-eqz v6, :cond_3

    .line 86
    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;->fromJson(Lorg/json/JSONObject;)Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->onJobMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;)V

    goto :goto_0

    .line 88
    :cond_3
    sget-object v7, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No JobHandler registered for job with ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_0

    .line 78
    .end local v3    # "jsonData":Lorg/json/JSONObject;
    .end local v4    # "jobID":J
    .end local v6    # "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    :cond_4
    iget-object v3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->baseMessageHandler:Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;->fromJson(Lorg/json/JSONObject;)Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;->onBaseMessage(Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    nop

    .line 98
    .end local v0    # "jsonMessage":Lorg/json/JSONObject;
    .end local v1    # "categoryID":I
    .end local v2    # "categoryType":Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
    :goto_0
    goto :goto_1

    .line 62
    .end local p1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 96
    .restart local p1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_2
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v0    # "ex":Lorg/json/JSONException;
    :goto_1
    monitor-exit p0

    return-void

    .line 62
    .end local p1    # "s":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public onUserCanceledConversion(J)V
    .locals 2
    .param p1, "jobID"    # J

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->jobHandlers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    .line 113
    .local v0, "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->onUserCanceledConversion()V

    .line 117
    return-void
.end method

.method public restoreJobIfRunning(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    .locals 3
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "convertCallback"    # Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->createOrUseExistingJobHandlerForJobIfPossible(Lorg/catrobat/catroid/scratchconverter/protocol/Job;ZLorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    move-result-object v1

    .line 163
    .local v1, "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 165
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getDownloadURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    return-object v1

    .line 168
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public scheduleJob(Lorg/catrobat/catroid/scratchconverter/protocol/Job;ZLorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Z
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "force"    # Z
    .param p3, "convertCallback"    # Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->createOrUseExistingJobHandlerForJobIfPossible(Lorg/catrobat/catroid/scratchconverter/protocol/Job;ZLorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;

    move-result-object v0

    .line 152
    .local v0, "jobHandler":Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;
    if-nez v0, :cond_0

    .line 153
    const/4 v1, 0x0

    return v1

    .line 156
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JobHandler;->onJobScheduled()V

    .line 157
    const/4 v1, 0x1

    return v1
.end method

.method public setBaseMessageHandler(Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;)V
    .locals 0
    .param p1, "baseMessageHandler"    # Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;

    .line 57
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;->baseMessageHandler:Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;

    .line 58
    return-void
.end method
