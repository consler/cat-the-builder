.class public abstract Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/Message;
.source "JobMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final jobID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "jobID"    # J

    .line 84
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message;-><init>()V

    .line 85
    iput-wide p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;->jobID:J

    .line 86
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
    .locals 11
    .param p0, "jsonMessage"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;",
            ">(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->DATA:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    .local v0, "jsonData":Lorg/json/JSONObject;
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 96
    .local v1, "jobID":J
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$message$job$JobMessage$Type:[I

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->TYPE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 143
    return-object v4

    .line 129
    :pswitch_0
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "downloadURL":Ljava/lang/String;
    sget-object v5, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CACHED_UTC_DATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v5}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "cachedUTCDateKey":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "dateUTC":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 133
    .local v7, "dateFormat":Ljava/text/DateFormat;
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 134
    const/4 v8, 0x0

    .line 136
    .local v8, "cachedDate":Ljava/util/Date;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v4

    .line 138
    .local v4, "e":Ljava/text/ParseException;
    sget-object v9, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 136
    .end local v4    # "e":Ljava/text/ParseException;
    :cond_1
    :goto_1
    move-object v8, v4

    .line 139
    nop

    .line 140
    :goto_2
    new-instance v4, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;

    invoke-direct {v4, v1, v2, v3, v8}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;-><init>(JLjava/lang/String;Ljava/util/Date;)V

    return-object v4

    .line 125
    .end local v3    # "downloadURL":Ljava/lang/String;
    .end local v5    # "cachedUTCDateKey":Ljava/lang/String;
    .end local v6    # "dateUTC":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/DateFormat;
    .end local v8    # "cachedDate":Ljava/util/Date;
    :pswitch_1
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    .line 126
    .local v3, "progress":S
    new-instance v4, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;

    invoke-direct {v4, v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;-><init>(JS)V

    return-object v4

    .line 116
    .end local v3    # "progress":S
    :pswitch_2
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->LINES:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 117
    .local v3, "jsonLines":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v4, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 119
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 121
    .end local v5    # "i":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 122
    .local v5, "lines":[Ljava/lang/String;
    new-instance v6, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;

    invoke-direct {v6, v1, v2, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;-><init>(J[Ljava/lang/String;)V

    return-object v6

    .line 113
    .end local v3    # "jsonLines":Lorg/json/JSONArray;
    .end local v4    # "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "lines":[Ljava/lang/String;
    :pswitch_3
    new-instance v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;

    invoke-direct {v3, v1, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;-><init>(J)V

    return-object v3

    .line 107
    :pswitch_4
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "jTitle":Ljava/lang/String;
    sget-object v5, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v5}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "jImageURLKey":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "jImageURL":Ljava/lang/String;
    :goto_4
    new-instance v6, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;

    invoke-direct {v6, v1, v2, v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 101
    .end local v3    # "jTitle":Ljava/lang/String;
    .end local v4    # "jImageURL":Ljava/lang/String;
    .end local v5    # "jImageURLKey":Ljava/lang/String;
    :pswitch_5
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "jobTitle":Ljava/lang/String;
    sget-object v5, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v5}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "jobImageURLKey":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "jobImageURL":Ljava/lang/String;
    :goto_5
    new-instance v6, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;

    invoke-direct {v6, v1, v2, v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobRunningMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 98
    .end local v3    # "jobTitle":Ljava/lang/String;
    .end local v4    # "jobImageURL":Ljava/lang/String;
    .end local v5    # "jobImageURLKey":Ljava/lang/String;
    :pswitch_6
    new-instance v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->MSG:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;-><init>(JLjava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getJobID()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;->jobID:J

    return-wide v0
.end method
