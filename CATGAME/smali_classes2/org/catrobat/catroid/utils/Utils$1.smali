.class final Lorg/catrobat/catroid/utils/Utils$1;
.super Landroid/content/BroadcastReceiver;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/utils/Utils;->fetchSpeechRecognitionSupportedLanguages(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 530
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/utils/Utils$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 535
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 536
    const-string v1, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "defaultLanguage":Ljava/lang/String;
    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->setListeningLanguageSensor(Ljava/lang/String;)V

    .line 538
    nop

    .line 539
    const-string v2, "android.speech.extra.SUPPORTED_LANGUAGES"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 540
    .local v2, "supportedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 541
    sget-object v3, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 542
    sget-object v3, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 543
    sget-object v3, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 544
    sget-object v3, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/utils/Utils;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onReceive: EXTRA_SUPPORTED_LANGUAGES is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v1    # "defaultLanguage":Ljava/lang/String;
    .end local v2    # "supportedLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 549
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/utils/Utils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceive: Bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_1
    return-void
.end method
