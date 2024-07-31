.class public interface abstract Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;
.super Ljava/lang/Object;
.source "SpeechRecognitionHolderInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\tH&J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0010\u001a\u00020\tH&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;",
        "",
        "callback",
        "Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "getCallback",
        "()Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "setCallback",
        "(Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;)V",
        "destroy",
        "",
        "forceSetLanguage",
        "initSpeechRecognition",
        "stageActivity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "stageResourceHolder",
        "Lorg/catrobat/catroid/stage/StageResourceHolder;",
        "startListening",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract forceSetLanguage()V
.end method

.method public abstract getCallback()Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;
.end method

.method public abstract initSpeechRecognition(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
.end method

.method public abstract setCallback(Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;)V
.end method

.method public abstract startListening()V
.end method
