.class public abstract Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/Message;
.source "BaseMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;
    .locals 7
    .param p0, "jsonMessage"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;",
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

    .line 71
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->DATA:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, "jsonData":Lorg/json/JSONObject;
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$message$base$BaseMessage$Type:[I

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->TYPE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 92
    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CATROBAT_LANGUAGE_VERSION:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 82
    .local v1, "catrobatLangVersion":D
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOBS_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 83
    .local v3, "jobsInfo":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v4, "jobList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/scratchconverter/protocol/Job;>;"
    if-eqz v3, :cond_1

    .line 85
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 86
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->fromJson(Lorg/json/JSONObject;)Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-direct {v5, v1, v2, v6}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;-><init>(D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    return-object v5

    .line 78
    .end local v1    # "catrobatLangVersion":D
    .end local v3    # "jobsInfo":Lorg/json/JSONArray;
    .end local v4    # "jobList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/scratchconverter/protocol/Job;>;"
    :cond_2
    new-instance v1, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;-><init>(J)V

    return-object v1

    .line 75
    :cond_3
    new-instance v1, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->MSG:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ErrorMessage;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
