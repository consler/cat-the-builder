.class public final Lorg/catrobat/catroid/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;
    }
.end annotation


# static fields
.field public static final SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSLATION_PLURAL_OTHER_INTEGER:I = 0xbb6bc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lorg/catrobat/catroid/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static changeSizeOfScratchImageURL(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "newHeight"    # I

    .line 273
    const/16 v0, 0x1e0

    .line 274
    .local v0, "width":I
    const/16 v1, 0x168

    .line 275
    .local v1, "height":I
    int-to-float v2, p1

    const v3, 0x3faaaaab

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 277
    .local v2, "newWidth":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "480x"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x360"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 277
    return-object v3
.end method

.method public static checkForDuplicates(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 585
    .local p0, "anyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 586
    .local v0, "prev":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 587
    .local v2, "it":Ljava/lang/Object;
    if-ne v2, v0, :cond_0

    .line 588
    const/4 v1, 0x1

    return v1

    .line 590
    :cond_0
    move-object v0, v2

    .line 591
    .end local v2    # "it":Ljava/lang/Object;
    goto :goto_0

    .line 592
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static checkForNetworkError(Lorg/catrobat/catroid/web/WebconnectionException;)Z
    .locals 2
    .param p0, "exception"    # Lorg/catrobat/catroid/web/WebconnectionException;

    .line 127
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/web/WebconnectionException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkIsNetworkAvailableAndShowErrorMessage(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 120
    .local v0, "networkAvailable":Z
    if-nez v0, :cond_0

    .line 121
    const v1, 0x7f1202e5

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 123
    :cond_0
    return v0
.end method

.method public static convertDoubleToPluralInteger(D)I
    .locals 4
    .param p0, "value"    # D

    .line 455
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 456
    .local v0, "absoluteValue":D
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 457
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 459
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 462
    :cond_1
    const v2, 0xbb6bc

    return v2

    .line 460
    :cond_2
    :goto_0
    double-to-int v2, v0

    return v2
.end method

.method public static extractRemixUrlsFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->STARTING:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    .line 176
    .local v0, "state":Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "extractedUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "temp":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2c

    if-ge v3, v4, :cond_5

    .line 180
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 181
    .local v4, "currentCharacter":C
    const/16 v6, 0x5b

    const/4 v7, 0x0

    if-eq v4, v6, :cond_2

    const/16 v6, 0x5d

    if-eq v4, v6, :cond_0

    .line 204
    sget-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->TOKEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    .line 205
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 192
    :cond_0
    sget-object v6, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->TOKEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    if-ne v0, v6, :cond_4

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "extractedUrl":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 195
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 196
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v7, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 199
    sget-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->BETWEEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    .line 200
    .end local v6    # "extractedUrl":Ljava/lang/String;
    goto :goto_1

    .line 183
    :cond_2
    sget-object v5, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->STARTING:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    if-ne v0, v5, :cond_3

    .line 184
    sget-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->BETWEEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    goto :goto_1

    .line 185
    :cond_3
    sget-object v5, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->TOKEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    if-ne v0, v5, :cond_4

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v7, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 187
    sget-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->BETWEEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    .line 179
    .end local v4    # "currentCharacter":C
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "index":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 210
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_6
    return-object v1
.end method

.method public static extractScratchJobIDFromURL(Ljava/lang/String;)J
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .line 256
    const-string v0, "https://scratch2.catrob.at/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 257
    return-wide v1

    .line 260
    :cond_0
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 261
    .local v0, "query":Ljava/lang/String;
    const/16 v3, 0x26

    invoke-static {v3}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Lcom/google/common/base/Splitter;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Splitter$MapSplitter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/base/Splitter$MapSplitter;->split(Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "job_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 262
    .local v3, "jobIDString":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 263
    return-wide v1

    .line 266
    :cond_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 267
    .local v4, "jobID":J
    cmp-long v6, v4, v1

    if-lez v6, :cond_2

    move-wide v1, v4

    :cond_2
    return-wide v1
.end method

.method public static fetchSpeechRecognitionSupportedLanguages(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 520
    sget-object v0, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    return-void

    .line 524
    :cond_0
    const-class v0, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    .line 526
    .local v0, "mobileServiceAvailability":Lorg/catrobat/catroid/utils/MobileServiceAvailability;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isGmsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.GET_LANGUAGE_DETAILS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "srIntent":Landroid/content/Intent;
    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const/4 v5, 0x0

    new-instance v6, Lorg/catrobat/catroid/utils/Utils$1;

    invoke-direct {v6}, Lorg/catrobat/catroid/utils/Utils$1;-><init>()V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 553
    .end local v1    # "srIntent":Landroid/content/Intent;
    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isHmsAvailable(Landroid/content/Context;)Z

    .line 563
    :goto_0
    return-void
.end method

.method public static generateRemixUrlsStringForMergedProgram(Lorg/catrobat/catroid/content/XmlHeader;Lorg/catrobat/catroid/content/XmlHeader;)Ljava/lang/String;
    .locals 9
    .param p0, "headerOfFirstProgram"    # Lorg/catrobat/catroid/content/XmlHeader;
    .param p1, "headerOfSecondProgram"    # Lorg/catrobat/catroid/content/XmlHeader;

    .line 131
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/XmlHeader;->getProjectName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "escapedFirstProgramName":Ljava/lang/String;
    const/16 v1, 0x5b

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 134
    const/16 v3, 0x5d

    const/16 v4, 0x29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 136
    const/16 v5, 0x2c

    const/16 v6, 0x3b

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/XmlHeader;->getProjectName()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "escapedSecondProgramName":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 142
    .end local v7    # "escapedSecondProgramName":Ljava/lang/String;
    .local v2, "escapedSecondProgramName":Ljava/lang/String;
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "remixUrlString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/XmlHeader;->getRemixParentsUrlString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v8, 0x20

    if-nez v6, :cond_0

    .line 150
    nop

    .line 151
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/XmlHeader;->getRemixParentsUrlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    nop

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/XmlHeader;->getRemixParentsUrlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    nop

    .line 164
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/XmlHeader;->getRemixParentsUrlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBit(II)I
    .locals 1
    .param p0, "number"    # I
    .param p1, "index"    # I

    .line 513
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 514
    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCurrentProjectName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 382
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    if-nez v0, :cond_3

    .line 384
    sget-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getProjectNames(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ProjectManager;->initializeDefaultProject(Landroid/content/Context;)Z

    .line 388
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 389
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    const-string v2, "projectName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "currentProjectName":Ljava/lang/String;
    if-eqz v1, :cond_1

    sget-object v2, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 391
    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getProjectNames(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 392
    :cond_1
    sget-object v2, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getProjectNames(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 394
    :cond_2
    return-object v1

    .line 396
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "currentProjectName":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameFromHttpResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 4
    .param p0, "httpResponse"    # Lokhttp3/Response;

    .line 225
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "contentDisposition":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    const-string v1, "filename\\*?=[\'\"]?(?:UTF-\\d[\'\"]*)?([^;\r\n\"\']*)[\'\"]?;?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 228
    .local v1, "fileNamePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 229
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 233
    .end local v1    # "fileNamePattern":Ljava/util/regex/Pattern;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getFileNameFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .line 217
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 218
    .local v0, "fileExtensionIndex":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 219
    .local v2, "fileNameIndex":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, "[?&#]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v1

    .line 221
    .end local v4    # "fileName":Ljava/lang/String;
    .local v1, "fileName":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method public static getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getJsonObjectFromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 366
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getMD5MessageDigest()Ljava/security/MessageDigest;
    .locals 4

    .line 350
    const/4 v0, 0x0

    .line 353
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 356
    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    const-string v3, "NoSuchAlgorithmException thrown in getMD5MessageDigest()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v0
.end method

.method public static getScratchSecondReleasePublishedDate()Ljava/util/Date;
    .locals 3

    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 238
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    const/16 v2, 0x7dd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 240
    const/4 v1, 0x5

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 241
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 370
    const-string v0, "unknown"

    .line 372
    .local v0, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 374
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 377
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "nameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    const-string v3, "Name not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v1    # "nameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v0
.end method

.method public static invalidateLoginTokenIfUserRestricted(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 468
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "restricted_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->logoutUser(Landroid/content/Context;)V

    .line 471
    const v1, 0x7f120537

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 473
    :cond_0
    return-void
.end method

.method public static isDefaultProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)Z
    .locals 12
    .param p0, "projectToCheck"    # Lorg/catrobat/catroid/content/Project;
    .param p1, "context"    # Landroid/content/Context;

    .line 408
    const-string v0, "<scenes>"

    const-string v1, "project_"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "uniqueProjectName":Ljava/lang/String;
    :goto_0
    sget-object v3, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-static {v3}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getProjectNames(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 414
    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, p1, v1}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->createAndSaveDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    .line 416
    .local v3, "defaultProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/io/XstreamSerializer;->getXmlAsStringFromProject(Lorg/catrobat/catroid/content/Project;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "defaultProjectXml":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V

    .line 420
    new-instance v5, Lorg/catrobat/catroid/utils/StringFinder;

    invoke-direct {v5}, Lorg/catrobat/catroid/utils/StringFinder;-><init>()V

    .line 422
    .local v5, "stringFinder":Lorg/catrobat/catroid/utils/StringFinder;
    const-string v6, "</scenes>"

    invoke-virtual {v5, v4, v0, v6}, Lorg/catrobat/catroid/utils/StringFinder;->findBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 423
    return v1

    .line 426
    :cond_1
    invoke-virtual {v5}, Lorg/catrobat/catroid/utils/StringFinder;->getResult()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "defaultProjectSpriteList":Ljava/lang/String;
    invoke-static {p0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectSaverKt;->saveProjectSerial(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)Z

    .line 430
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/catrobat/catroid/io/XstreamSerializer;->getXmlAsStringFromProject(Lorg/catrobat/catroid/content/Project;)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "projectToCheckXML":Ljava/lang/String;
    const-string v8, "</scenes"

    invoke-virtual {v5, v7, v0, v8}, Lorg/catrobat/catroid/utils/StringFinder;->findBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    return v1

    .line 436
    :cond_2
    invoke-virtual {v5}, Lorg/catrobat/catroid/utils/StringFinder;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "projectToCheckSpriteList":Ljava/lang/String;
    const-string v1, "((?s)<scriptId>.*?</scriptId>)"

    .line 439
    .local v1, "scriptIdRegex":Ljava/lang/String;
    const-string v8, "(?s)<brickId>.*?</brickId>"

    .line 440
    .local v8, "brickIdRegex":Ljava/lang/String;
    const-string v9, "<scriptId></scriptId>"

    .line 441
    .local v9, "scriptIdReplacement":Ljava/lang/String;
    const-string v10, "<bricktId></brickId>"

    .line 442
    .local v10, "brickIdIdReplacement":Ljava/lang/String;
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 443
    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 444
    invoke-virtual {v6, v1, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 445
    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 447
    invoke-virtual {v6, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    .line 448
    .end local v0    # "projectToCheckSpriteList":Ljava/lang/String;
    .end local v1    # "scriptIdRegex":Ljava/lang/String;
    .end local v2    # "uniqueProjectName":Ljava/lang/String;
    .end local v3    # "defaultProject":Lorg/catrobat/catroid/content/Project;
    .end local v4    # "defaultProjectXml":Ljava/lang/String;
    .end local v5    # "stringFinder":Lorg/catrobat/catroid/utils/StringFinder;
    .end local v6    # "defaultProjectSpriteList":Ljava/lang/String;
    .end local v7    # "projectToCheckXML":Ljava/lang/String;
    .end local v8    # "brickIdRegex":Ljava/lang/String;
    .end local v9    # "scriptIdReplacement":Ljava/lang/String;
    .end local v10    # "brickIdIdReplacement":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 449
    .local v0, "illegalArgumentException":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v0    # "illegalArgumentException":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method public static isDeprecatedScratchProgram(Lorg/catrobat/catroid/common/ScratchProgramData;)Z
    .locals 3
    .param p0, "programData"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 247
    invoke-static {}, Lorg/catrobat/catroid/utils/Utils;->getScratchSecondReleasePublishedDate()Ljava/util/Date;

    move-result-object v0

    .line 248
    .local v0, "releasePublishedDate":Ljava/util/Date;
    invoke-virtual {p0}, Lorg/catrobat/catroid/common/ScratchProgramData;->getModifiedDate()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/ScratchProgramData;->getModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    return v2

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/common/ScratchProgramData;->getCreatedDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/ScratchProgramData;->getCreatedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    nop

    .line 110
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 112
    .local v1, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 115
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isUserLoggedIn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 493
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 494
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const-string v2, "no_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 497
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 498
    .local v2, "tokenValid":Z
    :goto_0
    return v2
.end method

.method public static logoutUser(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 476
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;

    move-object v2, p0

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 478
    .local v1, "googleLoginHandler":Lorg/catrobat/catroid/transfers/GoogleLoginHandler;
    invoke-virtual {v1}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 480
    const-string v3, "token"

    const-string v4, "no_token"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 481
    const-string v3, "username"

    const-string v4, "no_username"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 482
    const-string v3, "GOOGLE_EXCHANGE_CODE"

    const-string v4, "NO_GOOGLE_EXCHANGE_CODE"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 483
    const-string v3, "GOOGLE_EMAIL"

    const-string v4, "NO_GOOGLE_EMAIL"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 484
    const-string v3, "GOOGLE_USERNAME"

    const-string v4, "NO_GOOGLE_USERNAME"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 485
    const-string v3, "GOOGLE_ID"

    const-string v4, "NO_GOOGLE_ID"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 486
    const-string v3, "GOOGLE_LOCALE"

    const-string v4, "NO_GOOGLE_LOCALE"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 487
    const-string v3, "GOOGLE_ID_TOKEN"

    const-string v4, "NO_GOOGLE_ID_TOKEN"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 488
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    invoke-static {}, Lorg/catrobat/catroid/ui/WebViewActivity;->clearCookies()V

    .line 490
    return-void
.end method

.method public static md5Checksum(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 288
    const-string v0, "IOException thrown in finally block of md5Checksum()"

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 289
    sget-object v0, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 292
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 293
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 289
    const-string v2, "md5Checksum() Error with file %s isFile: %s isDirectory: %s exists: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/utils/Utils;->getMD5MessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 299
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .line 301
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 302
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 305
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "length":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 306
    invoke-virtual {v1, v4, v2, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 312
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    :cond_1
    nop

    .line 313
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    :cond_2
    :goto_1
    goto :goto_2

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 311
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 308
    :catch_1
    move-exception v2

    .line 309
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    const-string v5, "IOException thrown in md5Checksum()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 313
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 320
    :goto_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 312
    :goto_3
    if-eqz v3, :cond_3

    .line 313
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 315
    :catch_2
    move-exception v4

    .line 316
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 317
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    nop

    .line 318
    :goto_5
    throw v2
.end method

.method public static md5Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 324
    invoke-static {}, Lorg/catrobat/catroid/utils/Utils;->getMD5MessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 326
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 328
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeExifData(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 566
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 568
    .local v0, "isJPG":Z
    :goto_1
    if-nez v0, :cond_2

    .line 569
    return-void

    .line 572
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 574
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 575
    .local v2, "exif":Landroidx/exifinterface/media/ExifInterface;
    sget-object v3, Lorg/catrobat/catroid/common/Constants;->EXIFTAGS_FOR_EXIFREMOVER:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 576
    .local v4, "exifTag":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .end local v4    # "exifTag":Ljava/lang/String;
    goto :goto_2

    .line 578
    :cond_3
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v2    # "exif":Landroidx/exifinterface/media/ExifInterface;
    goto :goto_3

    .line 579
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/utils/Utils;->TAG:Ljava/lang/String;

    const-string v4, "removeExifData: Failed to remove exif data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method public static round(DI)D
    .locals 5
    .param p0, "value"    # D
    .param p2, "precision"    # I

    .line 332
    int-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 333
    .local v0, "scale":I
    int-to-double v1, v0

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 282
    const-string v0, "[\\\\ /:*?\"^<>|]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBit(III)I
    .locals 1
    .param p0, "number"    # I
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 502
    if-ltz p1, :cond_1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_1

    .line 503
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 504
    shl-int/2addr v0, p1

    not-int v0, v0

    and-int/2addr v0, p0

    return v0

    .line 506
    :cond_0
    shl-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0

    .line 509
    :cond_1
    return p0
.end method

.method public static setLastUsedProjectName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectName"    # Ljava/lang/String;

    .line 400
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 402
    const-string v1, "projectName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 404
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "messageDigest"    # [B

    .line 337
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 339
    .local v0, "hexChars":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 340
    .local v1, "hexBuffer":[C
    const/4 v2, 0x0

    .line 341
    .local v2, "j":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, p0, v4

    .line 342
    .local v5, "c":B
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "j":I
    .local v6, "j":I
    and-int/lit16 v7, v5, 0xf0

    shr-int/lit8 v7, v7, 0x4

    aget-char v7, v0, v7

    aput-char v7, v1, v2

    .line 343
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "j":I
    .restart local v2    # "j":I
    and-int/lit8 v7, v5, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v6

    .line 341
    .end local v5    # "c":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
