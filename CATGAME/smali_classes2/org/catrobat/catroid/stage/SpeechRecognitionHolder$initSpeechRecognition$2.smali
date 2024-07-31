.class public final Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;
.super Ljava/lang/Object;
.source "SpeechRecognitionHolder.kt"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->initSpeechRecognition(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "org/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2",
        "Landroid/speech/RecognitionListener;",
        "onBeginningOfSpeech",
        "",
        "onBufferReceived",
        "buffer",
        "",
        "onEndOfSpeech",
        "onError",
        "error",
        "",
        "onEvent",
        "eventType",
        "params",
        "Landroid/os/Bundle;",
        "onPartialResults",
        "partialResults",
        "onReadyForSpeech",
        "onResults",
        "results",
        "onRmsChanged",
        "rmsdB",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

.field final synthetic $stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

.field final synthetic this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;
    .param p2, "$captured_local_variable$1"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p3, "$captured_local_variable$2"    # Lorg/catrobat/catroid/stage/StageResourceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/stage/StageActivity;",
            "Lorg/catrobat/catroid/stage/StageResourceHolder;",
            ")V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    iput-object p3, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->$stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .line 88
    invoke-static {}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecognizer: onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1
    .param p1, "buffer"    # [B

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .line 96
    invoke-static {}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecognizer: onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "error"    # I

    .line 100
    invoke-static {}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechRecognizer onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-static {v0}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getSpeechRecognizer$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->startListening()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->$stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-static {v0, v1, v2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$showDialog(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    .line 111
    :goto_0
    nop

    .line 112
    invoke-static {}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecognizer restarted!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "partialResults"    # Landroid/os/Bundle;

    const-string v0, "partialResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechRecognizer: onReadyForSpeech"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "results"    # Landroid/os/Bundle;

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    .local v0, "candidates":Ljava/util/ArrayList;
    invoke-static {}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeechRecognizer: onResults:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, ""

    .line 122
    .local v1, "spokenWords":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "candidates.first()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->getCallback()Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;->onResult(Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;->$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->startSensorListener(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .param p1, "rmsdB"    # F

    .line 91
    return-void
.end method
