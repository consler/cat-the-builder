.class public Lorg/catrobat/catroid/common/Survey;
.super Ljava/lang/Object;
.source "Survey.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;


# static fields
.field public static final MINIMUM_TIME_SPENT_IN_APP_IN_SECONDS:I = 0xe10


# instance fields
.field fulfilledSurveyRequirements:Z

.field sessionStartTimeInMilliseconds:J

.field sessionTimeSpentInIdeInSeconds:J

.field sessionTimeSpentInStageInMilliseconds:J

.field stageStartTimeInMilliseconds:J

.field uploadFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    .line 58
    iput-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->uploadFlag:Z

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionTimeSpentInStageInMilliseconds:J

    .line 60
    iput-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionStartTimeInMilliseconds:J

    .line 62
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/common/Survey;->checkSurveyRequirement(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private checkSurveyRequirement(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    if-nez v0, :cond_1

    .line 107
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 108
    const-string v3, "timeSpentInApp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    .local v0, "timeSpentInApp":J
    const-wide/16 v2, 0xe10

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    .line 112
    .end local v0    # "timeSpentInApp":J
    :cond_1
    return-void
.end method


# virtual methods
.method public endAppTime(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/catrobat/catroid/common/Survey;->sessionStartTimeInMilliseconds:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/catrobat/catroid/common/Survey;->sessionTimeSpentInStageInMilliseconds:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionTimeSpentInIdeInSeconds:J

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionStartTimeInMilliseconds:J

    .line 83
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 84
    const-string v3, "timeSpentInApp"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 86
    .local v0, "oldTimeSpentInApp":J
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 87
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-wide v4, p0, Lorg/catrobat/catroid/common/Survey;->sessionTimeSpentInIdeInSeconds:J

    add-long/2addr v4, v0

    .line 88
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 89
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    .end local v0    # "oldTimeSpentInApp":J
    :cond_0
    return-void
.end method

.method public endStageTime()V
    .locals 6

    .line 100
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    if-nez v0, :cond_0

    .line 101
    iget-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionTimeSpentInStageInMilliseconds:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/catrobat/catroid/common/Survey;->stageStartTimeInMilliseconds:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionTimeSpentInStageInMilliseconds:J

    .line 103
    :cond_0
    return-void
.end method

.method public getSurvey(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    new-instance v0, Lorg/catrobat/catroid/transfers/GetSurveyTask;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/transfers/GetSurveyTask;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "getSurveyTask":Lorg/catrobat/catroid/transfers/GetSurveyTask;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/transfers/GetSurveyTask;->setOnSurveyResponseListener(Lorg/catrobat/catroid/transfers/GetSurveyTask$SurveyResponseListener;)V

    .line 150
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/transfers/GetSurveyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public getUploadFlag()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->uploadFlag:Z

    return v0
.end method

.method public isUrlNew(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surveyUrl"    # Ljava/lang/String;

    .line 193
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    const-string v1, "surveyUrl1Hash"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 196
    .local v0, "firstSurveyHash":J
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 197
    const-string v5, "surveyUrl2Hash"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 199
    .local v2, "secondSurveyHash":J
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public onSurveyReceived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surveyUrl"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/common/Survey;->isUrlNew(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/4 v1, 0x1

    const-string v2, "openInApp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/common/Survey;->saveUrlHash(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "lastUsedDate"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    .line 170
    const-string v3, "showSurvey"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public saveUrlHash(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surveyUrl"    # Ljava/lang/String;

    .line 177
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    const-string v1, "surveyUrl1Hash"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 180
    .local v2, "firstSurveyHash":J
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    const-string v4, "surveyUrl2Hash"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method public setUploadFlag(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 120
    iput-boolean p1, p0, Lorg/catrobat/catroid/common/Survey;->uploadFlag:Z

    .line 121
    return-void
.end method

.method public showSurvey(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 125
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "lastUsedDate"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    .local v2, "oldDate":J
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    const-string v4, "showSurvey"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    .local v0, "showSurvey":Z
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/Survey;->getUploadFlag()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/common/Survey;->getSurvey(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 136
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/4 v6, 0x1

    .line 137
    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 138
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    .end local v0    # "showSurvey":Z
    .end local v2    # "oldDate":J
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lorg/catrobat/catroid/common/Survey;->uploadFlag:Z

    .line 144
    return-void
.end method

.method public startAppTime(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/common/Survey;->checkSurveyRequirement(Landroid/content/Context;)V

    .line 68
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "lastUsedDate"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionStartTimeInMilliseconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->sessionStartTimeInMilliseconds:J

    .line 76
    :cond_0
    return-void
.end method

.method public startStageTime()V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/Survey;->fulfilledSurveyRequirements:Z

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/catrobat/catroid/common/Survey;->stageStartTimeInMilliseconds:J

    .line 97
    :cond_0
    return-void
.end method
