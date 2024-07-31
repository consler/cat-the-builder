.class public Lorg/catrobat/catroid/scratchconverter/protocol/Job;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;,
        Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    }
.end annotation


# instance fields
.field private downloadProgress:S

.field private downloadState:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field private downloadURL:Ljava/lang/String;

.field private image:Lcom/google/android/gms/common/images/WebImage;

.field private jobID:J

.field private progress:S

.field private state:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;)V
    .locals 1
    .param p1, "jobID"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "image"    # Lcom/google/android/gms/common/images/WebImage;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->UNSCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->state:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 110
    iput-wide p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->jobID:J

    .line 111
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->title:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->image:Lcom/google/android/gms/common/images/WebImage;

    .line 113
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->progress:S

    .line 114
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadState:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadURL:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .locals 11
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 119
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->STATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    .line 120
    .local v0, "state":Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 121
    .local v1, "jobID":J
    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "title":Ljava/lang/String;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    .line 123
    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    nop

    .line 124
    .local v4, "imageURL":Ljava/lang/String;
    const/4 v5, 0x0

    .line 125
    .local v5, "image":Lcom/google/android/gms/common/images/WebImage;
    if-eqz v4, :cond_1

    .line 126
    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    .line 127
    .local v6, "imageSize":[I
    new-instance v7, Lcom/google/android/gms/common/images/WebImage;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    move-object v5, v7

    .line 129
    .end local v6    # "imageSize":[I
    :cond_1
    sget-object v6, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-virtual {v6}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-short v6, v6

    .line 130
    .local v6, "progress":S
    sget-object v7, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->DOWNLOAD_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-virtual {v7}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "downloadURL":Ljava/lang/String;
    new-instance v8, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    invoke-direct {v8, v1, v2, v3, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;-><init>(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;)V

    .line 132
    .local v8, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    iput-object v0, v8, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->state:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 133
    iput-short v6, v8, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->progress:S

    .line 134
    iput-object v7, v8, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadURL:Ljava/lang/String;

    .line 135
    return-object v8

    nop

    :array_0
    .array-data 4
        0x1e0
        0x168
    .end array-data
.end method


# virtual methods
.method public getDownloadProgress()S
    .locals 1

    .line 171
    iget-short v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadProgress:S

    return v0
.end method

.method public getDownloadState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadState:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    return-object v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/android/gms/common/images/WebImage;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->image:Lcom/google/android/gms/common/images/WebImage;

    return-object v0
.end method

.method public getJobID()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->jobID:J

    return-wide v0
.end method

.method public getProgress()S
    .locals 1

    .line 163
    iget-short v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->progress:S

    return v0
.end method

.method public getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->state:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->state:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public setDownloadProgress(S)V
    .locals 0
    .param p1, "downloadProgress"    # S

    .line 175
    iput-short p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadProgress:S

    .line 176
    return-void
.end method

.method public setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V
    .locals 0
    .param p1, "downloadState"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 191
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadState:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 192
    return-void
.end method

.method public setDownloadURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadURL"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->downloadURL:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setImage(Lcom/google/android/gms/common/images/WebImage;)V
    .locals 0
    .param p1, "image"    # Lcom/google/android/gms/common/images/WebImage;

    .line 183
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->image:Lcom/google/android/gms/common/images/WebImage;

    .line 184
    return-void
.end method

.method public setProgress(S)V
    .locals 0
    .param p1, "progress"    # S

    .line 167
    iput-short p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->progress:S

    .line 168
    return-void
.end method

.method public setState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;)V
    .locals 0
    .param p1, "state"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 147
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->state:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 148
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->title:Ljava/lang/String;

    .line 160
    return-void
.end method
